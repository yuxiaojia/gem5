/* **************************************************************** *
 * Example pthread code                                             *
 * **************************************************************** */
#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>
#include <synch.h>
#include <assert.h>
#include <sys/time.h>
#include <sys/errno.h>
#include <sys/procset.h>

#define   MAX_NUMP    8

/* Processor IDs are found, on a Sun SMP, through psrinfo */
int               ProcessorIds[MAX_NUMP] = {0, 1, 4, 5, 8 , 9, 12, 13};
int               NumProcs;

pthread_mutex_t   SyncLock; /* mutex */
pthread_cond_t    SyncCV;    /* condition variable */
int               SyncCount;

pthread_mutex_t   ThreadLock; /* mutex */
hrtime_t          StartTime;
hrtime_t          EndTime;  
int               Count;


/* Ad-hoc Barrier Code, this function will cause all the threads to synchronize
 * with each other.  What happens is that the mutex lock is used to control
 * access to the condition variable & SyncCount variable.  SyncCount is
 * initialized to 0 in the beginning, and when barrier is called by each
 * thread, SyncCount is incremented.  When it reaches NumProcs, the
 * number of threads/processors, a conditional broadcast is sent out which
 * wakes up all the threads.  The bad part is that each thread will then
 * contend over the mutex lock, SyncLock, and will be released sequentially.
 *
 * see man for further descriptions about cond_broadcast, cond_wait, etc. 
 *
 * Created to be called only once.. things are re-initialized 
 * 
 * Barrier locks could also be implemented in many other ways, using
 * semaphores, and other sync. functions
 */
void Barrier()
{
  int ret;

  pthread_mutex_lock(&SyncLock); /* Get the thread lock */
  SyncCount++;
  if(SyncCount == NumProcs) {
    ret = pthread_cond_broadcast(&SyncCV);
    assert(ret == 0);
  } else {
    ret = pthread_cond_wait(&SyncCV, &SyncLock); 
    assert(ret == 0);
  }
  pthread_mutex_unlock(&SyncLock);
}


/* The function which is called once the thread is allocated */
void* ThreadLoop(void* tmp)
{
  int threadId = (int) tmp;
  int ret;
  int startTime, endTime;

  /* ********************** Thread Initialization *********************** */
  /* Bind the thread to a processor.  This will make sure that each of
   * threads are on a different processor.  ProcessorIds[threadId]
   * specifies the processor ID which the thread is binding to.
   */ 
  ret = processor_bind(P_LWPID, P_MYID, ProcessorIds[threadId], NULL);
  assert(ret == 0);

  /* ********************** Thread Synchronization*********************** */
  Barrier();

  /* ********************** Execute Job ********************************* */
  pthread_mutex_lock(&ThreadLock); /* Get the thread lock */
  Count++;
  pthread_mutex_unlock(&ThreadLock); /* Release the lock */
}


main(int argc, char** argv)
{
  pthread_t*     threads;
  pthread_attr_t attr;
  int            ret;
  int            dx;

  /* fprintf(stderr, "%s <numProcesors> <pIds>\n", argv[0]);
   * assert(argc == (atoi(argv[1])+2));
   * ProcessorIds = (int *) malloc(sizeof(int) * atoi(argv[1]));
   * assert(ProcessorIds != NULL);
   * for(dx=0; dx < NumProcs; dx++) {
   *   ProcessorIds[dx] = atoi(argv[dx+2]);
   * }
   */

  if(argc != 2) {
    fprintf(stderr, "%s <numProcesors>\n", argv[0]);
  }
  assert(argc == 2);
  NumProcs = atoi(argv[1]);
  assert(NumProcs > 0 && NumProcs <= MAX_NUMP);

  /* Initialize array of thread structures */
  threads = (pthread_t *) malloc(sizeof(pthread_t) * NumProcs);
  assert(threads != NULL);

  /* Initialize thread attribute */
  pthread_attr_init(&attr);
  pthread_attr_setscope(&attr, PTHREAD_SCOPE_SYSTEM);

  /* Initialize mutexs */
  ret = pthread_mutex_init(&SyncLock, NULL);
  assert(ret == 0);
  ret = pthread_mutex_init(&ThreadLock, NULL);
  assert(ret == 0);
  
  /* Init condition variable */
  ret = pthread_cond_init(&SyncCV, NULL);
  assert(ret == 0);
  SyncCount = 0;

  Count = 0;

  /* get high resolution timer, timer is expressed in nanoseconds, relative
   * to some arbitrary time.. so to get delta time must call gethrtime at
   * the end of operation and subtract the two times.
   */
  StartTime = gethrtime();
                         
  for(dx=0; dx < NumProcs; dx++) {
    /* ************************************************************
     * pthread_create takes 4 parameters
     *  p1: threads(output)
     *  p2: thread attribute
     *  p3: start routine, where new thread begins
     *  p4: arguments to the thread
     * ************************************************************ */
    ret = pthread_create(&threads[dx], &attr, ThreadLoop, (void*) dx);
    assert(ret == 0);

  }

  /* Wait for each of the threads to terminate */
  for(dx=0; dx < NumProcs; dx++) {
    ret = pthread_join(threads[dx], NULL);
    assert(ret == 0);
  }

  EndTime = gethrtime();

  printf("Count = %d\n", Count);
  printf("Time = %lld nanoseconds\n", EndTime - StartTime);

  pthread_mutex_destroy(&ThreadLock);

  pthread_mutex_destroy(&SyncLock);
  pthread_cond_destroy(&SyncCV);
  pthread_attr_destroy(&attr);
}
