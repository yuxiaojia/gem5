#BASE_DIR := $(shell pwd)

HIPOPTS = --amdgpu-target=gfx900,gfx906 --save-temps

HIP_PATH ?= /opt/rocm/hip

# By default, assume gem5 is in the same directory as this repo
GEM5_PATH = ../../gem5

# Needed for m5 ops
CFLAGS = -I$(GEM5_PATH)/include
LDFLAGS = -L$(GEM5_PATH)/util/m5/build/x86/out -lm5

CC := $(HIP_PATH)/bin/hipcc

SRC = fifo_test_m5.cpp

EXE = fifo_test_m5


release:
	$(CC) $(HIPOPTS) $(SRC) -o $(EXE) $(CFLAGS) $(LDFLAGS)

clean:
	rm -f *.o *~ $(EXE)

run:
	./$(EXE)

profile:
	rocprof ./$(EXE)

events:
	rocprof  --events elapsed_cycles_sm ./$(EXE)
