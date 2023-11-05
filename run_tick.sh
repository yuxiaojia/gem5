docker run --volume $(pwd):$(pwd) -w $(pwd) gcr.io/gem5-test/gcn-gpu:v22-1 build/VEGA_X86/gem5.opt --debug-flag=GPUKernelInfo configs/example/apu_se.py -n 3 --dgpu --gfx-version=gfx900 --num-compute-units=4 --cu-per-sa=4 --num-gpu-complex=1 --reg-alloc-policy=dynamic --num-tccs=8 --num-dirs=64 --mem-size=16GB --mem-type=HBM_2000_4H_1x64 --vreg-file-size=16384 --sreg-file-size=800 --tcc-size=256kB --gpu-clock=1801MHz --ruby-clock=1000MHz --vrf_lm_bus_latency=6 --mem-req-latency=69 --mem-resp-latency=69 --mandatory_queue_latency=1 --max-cu-tokens=160 --max-coalesces-per-cycle=10 --sqc-size=16kB --tcp-size=512B --scalar-mem-req-latency=28 --TCP_latency=4 --tcp-assoc=4 --tcp-num-banks=16 --TCC_latency=121 --tcc-assoc=16 --tcc-tag-access-latency=1 --tcc-data-access-latency=1 --tcp-rp=FIFORP --WB_L2 --tcc-rp=FIFORP -c gpu_test/fifo_test_1 > tick_info/fifo_test_1.txt
docker run --volume $(pwd):$(pwd) -w $(pwd) gcr.io/gem5-test/gcn-gpu:v22-1 build/VEGA_X86/gem5.opt --debug-flag=GPUKernelInfo configs/example/apu_se.py -n 3 --dgpu --gfx-version=gfx900 --num-compute-units=4 --cu-per-sa=4 --num-gpu-complex=1 --reg-alloc-policy=dynamic --num-tccs=8 --num-dirs=64 --mem-size=16GB --mem-type=HBM_2000_4H_1x64 --vreg-file-size=16384 --sreg-file-size=800 --tcc-size=256kB --gpu-clock=1801MHz --ruby-clock=1000MHz --vrf_lm_bus_latency=6 --mem-req-latency=69 --mem-resp-latency=69 --mandatory_queue_latency=1 --max-cu-tokens=160 --max-coalesces-per-cycle=10 --sqc-size=16kB --tcp-size=512B --scalar-mem-req-latency=28 --TCP_latency=4 --tcp-assoc=4 --tcp-num-banks=16 --TCC_latency=121 --tcc-assoc=16 --tcc-tag-access-latency=1 --tcc-data-access-latency=1 --tcp-rp=FIFORP --WB_L2 --tcc-rp=FIFORP -c gpu_test/fifo_test_2 > tick_info/fifo_test_2.txt
docker run --volume $(pwd):$(pwd) -w $(pwd) gcr.io/gem5-test/gcn-gpu:v22-1 build/VEGA_X86/gem5.opt --debug-flag=GPUKernelInfo configs/example/apu_se.py -n 3 --dgpu --gfx-version=gfx900 --num-compute-units=4 --cu-per-sa=4 --num-gpu-complex=1 --reg-alloc-policy=dynamic --num-tccs=8 --num-dirs=64 --mem-size=16GB --mem-type=HBM_2000_4H_1x64 --vreg-file-size=16384 --sreg-file-size=800 --tcc-size=256kB --gpu-clock=1801MHz --ruby-clock=1000MHz --vrf_lm_bus_latency=6 --mem-req-latency=69 --mem-resp-latency=69 --mandatory_queue_latency=1 --max-cu-tokens=160 --max-coalesces-per-cycle=10 --sqc-size=16kB --tcp-size=512B --scalar-mem-req-latency=28 --TCP_latency=4 --tcp-assoc=4 --tcp-num-banks=16 --TCC_latency=121 --tcc-assoc=16 --tcc-tag-access-latency=1 --tcc-data-access-latency=1 --tcp-rp=LFURP --WB_L2 --tcc-rp=LFURP -c gpu_test/lfu_test_1 > tick_info/lfu_test_1.txt
docker run --volume $(pwd):$(pwd) -w $(pwd) gcr.io/gem5-test/gcn-gpu:v22-1 build/VEGA_X86/gem5.opt --debug-flag=GPUKernelInfo configs/example/apu_se.py -n 3 --dgpu --gfx-version=gfx900 --num-compute-units=4 --cu-per-sa=4 --num-gpu-complex=1 --reg-alloc-policy=dynamic --num-tccs=8 --num-dirs=64 --mem-size=16GB --mem-type=HBM_2000_4H_1x64 --vreg-file-size=16384 --sreg-file-size=800 --tcc-size=256kB --gpu-clock=1801MHz --ruby-clock=1000MHz --vrf_lm_bus_latency=6 --mem-req-latency=69 --mem-resp-latency=69 --mandatory_queue_latency=1 --max-cu-tokens=160 --max-coalesces-per-cycle=10 --sqc-size=16kB --tcp-size=512B --scalar-mem-req-latency=28 --TCP_latency=4 --tcp-assoc=4 --tcp-num-banks=16 --TCC_latency=121 --tcc-assoc=16 --tcc-tag-access-latency=1 --tcc-data-access-latency=1 --tcp-rp=LFURP --WB_L2 --tcc-rp=LFURP -c gpu_test/lfu_test_2 > tick_info/lfu_test_2.txt
docker run --volume $(pwd):$(pwd) -w $(pwd) gcr.io/gem5-test/gcn-gpu:v22-1 build/VEGA_X86/gem5.opt --debug-flag=GPUKernelInfo configs/example/apu_se.py -n 3 --dgpu --gfx-version=gfx900 --num-compute-units=4 --cu-per-sa=4 --num-gpu-complex=1 --reg-alloc-policy=dynamic --num-tccs=8 --num-dirs=64 --mem-size=16GB --mem-type=HBM_2000_4H_1x64 --vreg-file-size=16384 --sreg-file-size=800 --tcc-size=256kB --gpu-clock=1801MHz --ruby-clock=1000MHz --vrf_lm_bus_latency=6 --mem-req-latency=69 --mem-resp-latency=69 --mandatory_queue_latency=1 --max-cu-tokens=160 --max-coalesces-per-cycle=10 --sqc-size=16kB --tcp-size=512B --scalar-mem-req-latency=28 --TCP_latency=4 --tcp-assoc=4 --tcp-num-banks=16 --TCC_latency=121 --tcc-assoc=16 --tcc-tag-access-latency=1 --tcc-data-access-latency=1 --tcp-rp=LFURP --WB_L2 --tcc-rp=LFURP -c gpu_test/lfu_test_3 > tick_info/lfu_test_3.txt
docker run --volume $(pwd):$(pwd) -w $(pwd) gcr.io/gem5-test/gcn-gpu:v22-1 build/VEGA_X86/gem5.opt --debug-flag=GPUKernelInfo configs/example/apu_se.py -n 3 --dgpu --gfx-version=gfx900 --num-compute-units=4 --cu-per-sa=4 --num-gpu-complex=1 --reg-alloc-policy=dynamic --num-tccs=8 --num-dirs=64 --mem-size=16GB --mem-type=HBM_2000_4H_1x64 --vreg-file-size=16384 --sreg-file-size=800 --tcc-size=256kB --gpu-clock=1801MHz --ruby-clock=1000MHz --vrf_lm_bus_latency=6 --mem-req-latency=69 --mem-resp-latency=69 --mandatory_queue_latency=1 --max-cu-tokens=160 --max-coalesces-per-cycle=10 --sqc-size=16kB --tcp-size=512B --scalar-mem-req-latency=28 --TCP_latency=4 --tcp-assoc=4 --tcp-num-banks=16 --TCC_latency=121 --tcc-assoc=16 --tcc-tag-access-latency=1 --tcc-data-access-latency=1 --tcp-rp=LIPRP --WB_L2 --tcc-rp=LIPRP -c gpu_test/lip_test_1 > tick_info/lip_test_1.txt
docker run --volume $(pwd):$(pwd) -w $(pwd) gcr.io/gem5-test/gcn-gpu:v22-1 build/VEGA_X86/gem5.opt --debug-flag=GPUKernelInfo configs/example/apu_se.py -n 3 --dgpu --gfx-version=gfx900 --num-compute-units=4 --cu-per-sa=4 --num-gpu-complex=1 --reg-alloc-policy=dynamic --num-tccs=8 --num-dirs=64 --mem-size=16GB --mem-type=HBM_2000_4H_1x64 --vreg-file-size=16384 --sreg-file-size=800 --tcc-size=256kB --gpu-clock=1801MHz --ruby-clock=1000MHz --vrf_lm_bus_latency=6 --mem-req-latency=69 --mem-resp-latency=69 --mandatory_queue_latency=1 --max-cu-tokens=160 --max-coalesces-per-cycle=10 --sqc-size=16kB --tcp-size=512B --scalar-mem-req-latency=28 --TCP_latency=4 --tcp-assoc=4 --tcp-num-banks=16 --TCC_latency=121 --tcc-assoc=16 --tcc-tag-access-latency=1 --tcc-data-access-latency=1 --tcp-rp=LRURP --WB_L2 --tcc-rp=LRURP -c gpu_test/lru_test_1 > tick_info/lru_test_1.txt
docker run --volume $(pwd):$(pwd) -w $(pwd) gcr.io/gem5-test/gcn-gpu:v22-1 build/VEGA_X86/gem5.opt --debug-flag=GPUKernelInfo configs/example/apu_se.py -n 3 --dgpu --gfx-version=gfx900 --num-compute-units=4 --cu-per-sa=4 --num-gpu-complex=1 --reg-alloc-policy=dynamic --num-tccs=8 --num-dirs=64 --mem-size=16GB --mem-type=HBM_2000_4H_1x64 --vreg-file-size=16384 --sreg-file-size=800 --tcc-size=256kB --gpu-clock=1801MHz --ruby-clock=1000MHz --vrf_lm_bus_latency=6 --mem-req-latency=69 --mem-resp-latency=69 --mandatory_queue_latency=1 --max-cu-tokens=160 --max-coalesces-per-cycle=10 --sqc-size=16kB --tcp-size=512B --scalar-mem-req-latency=28 --TCP_latency=4 --tcp-assoc=4 --tcp-num-banks=16 --TCC_latency=121 --tcc-assoc=16 --tcc-tag-access-latency=1 --tcc-data-access-latency=1 --tcp-rp=LRURP --WB_L2 --tcc-rp=LRURP -c gpu_test/lru_test_2 > tick_info/lru_test_2.txt
docker run --volume $(pwd):$(pwd) -w $(pwd) gcr.io/gem5-test/gcn-gpu:v22-1 build/VEGA_X86/gem5.opt --debug-flag=GPUKernelInfo configs/example/apu_se.py -n 3 --dgpu --gfx-version=gfx900 --num-compute-units=4 --cu-per-sa=4 --num-gpu-complex=1 --reg-alloc-policy=dynamic --num-tccs=8 --num-dirs=64 --mem-size=16GB --mem-type=HBM_2000_4H_1x64 --vreg-file-size=16384 --sreg-file-size=800 --tcc-size=256kB --gpu-clock=1801MHz --ruby-clock=1000MHz --vrf_lm_bus_latency=6 --mem-req-latency=69 --mem-resp-latency=69 --mandatory_queue_latency=1 --max-cu-tokens=160 --max-coalesces-per-cycle=10 --sqc-size=16kB --tcp-size=512B --scalar-mem-req-latency=28 --TCP_latency=4 --tcp-assoc=4 --tcp-num-banks=16 --TCC_latency=121 --tcc-assoc=16 --tcc-tag-access-latency=1 --tcc-data-access-latency=1 --tcp-rp=LRURP --WB_L2 --tcc-rp=LRURP -c gpu_test/lru_test_3 > tick_info/lru_test_3.txt
docker run --volume $(pwd):$(pwd) -w $(pwd) gcr.io/gem5-test/gcn-gpu:v22-1 build/VEGA_X86/gem5.opt --debug-flag=GPUKernelInfo configs/example/apu_se.py -n 3 --dgpu --gfx-version=gfx900 --num-compute-units=4 --cu-per-sa=4 --num-gpu-complex=1 --reg-alloc-policy=dynamic --num-tccs=8 --num-dirs=64 --mem-size=16GB --mem-type=HBM_2000_4H_1x64 --vreg-file-size=16384 --sreg-file-size=800 --tcc-size=256kB --gpu-clock=1801MHz --ruby-clock=1000MHz --vrf_lm_bus_latency=6 --mem-req-latency=69 --mem-resp-latency=69 --mandatory_queue_latency=1 --max-cu-tokens=160 --max-coalesces-per-cycle=10 --sqc-size=16kB --tcp-size=512B --scalar-mem-req-latency=28 --TCP_latency=4 --tcp-assoc=4 --tcp-num-banks=16 --TCC_latency=121 --tcc-assoc=16 --tcc-tag-access-latency=1 --tcc-data-access-latency=1 --tcp-rp=LRURP --WB_L2 --tcc-rp=LRURP -c gpu_test/lru_test_4 > tick_info/lru_test_4.txt
docker run --volume $(pwd):$(pwd) -w $(pwd) gcr.io/gem5-test/gcn-gpu:v22-1 build/VEGA_X86/gem5.opt --debug-flag=GPUKernelInfo configs/example/apu_se.py -n 3 --dgpu --gfx-version=gfx900 --num-compute-units=4 --cu-per-sa=4 --num-gpu-complex=1 --reg-alloc-policy=dynamic --num-tccs=8 --num-dirs=64 --mem-size=16GB --mem-type=HBM_2000_4H_1x64 --vreg-file-size=16384 --sreg-file-size=800 --tcc-size=256kB --gpu-clock=1801MHz --ruby-clock=1000MHz --vrf_lm_bus_latency=6 --mem-req-latency=69 --mem-resp-latency=69 --mandatory_queue_latency=1 --max-cu-tokens=160 --max-coalesces-per-cycle=10 --sqc-size=16kB --tcp-size=512B --scalar-mem-req-latency=28 --TCP_latency=4 --tcp-assoc=4 --tcp-num-banks=16 --TCC_latency=121 --tcc-assoc=16 --tcc-tag-access-latency=1 --tcc-data-access-latency=1 --tcp-rp=MRURP --WB_L2 --tcc-rp=MRURP -c gpu_test/mru_test_1 > tick_info/mru_test_1.txt
docker run --volume $(pwd):$(pwd) -w $(pwd) gcr.io/gem5-test/gcn-gpu:v22-1 build/VEGA_X86/gem5.opt --debug-flag=GPUKernelInfo configs/example/apu_se.py -n 3 --dgpu --gfx-version=gfx900 --num-compute-units=4 --cu-per-sa=4 --num-gpu-complex=1 --reg-alloc-policy=dynamic --num-tccs=8 --num-dirs=64 --mem-size=16GB --mem-type=HBM_2000_4H_1x64 --vreg-file-size=16384 --sreg-file-size=800 --tcc-size=256kB --gpu-clock=1801MHz --ruby-clock=1000MHz --vrf_lm_bus_latency=6 --mem-req-latency=69 --mem-resp-latency=69 --mandatory_queue_latency=1 --max-cu-tokens=160 --max-coalesces-per-cycle=10 --sqc-size=16kB --tcp-size=512B --scalar-mem-req-latency=28 --TCP_latency=4 --tcp-assoc=4 --tcp-num-banks=16 --TCC_latency=121 --tcc-assoc=16 --tcc-tag-access-latency=1 --tcc-data-access-latency=1 --tcp-rp=MRURP --WB_L2 --tcc-rp=MRURP -c gpu_test/mru_test_2 > tick_info/mru_test_2.txt
docker run --volume $(pwd):$(pwd) -w $(pwd) gcr.io/gem5-test/gcn-gpu:v22-1 build/VEGA_X86/gem5.opt --debug-flag=GPUKernelInfo configs/example/apu_se.py -n 3 --dgpu --gfx-version=gfx900 --num-compute-units=4 --cu-per-sa=4 --num-gpu-complex=1 --reg-alloc-policy=dynamic --num-tccs=8 --num-dirs=64 --mem-size=16GB --mem-type=HBM_2000_4H_1x64 --vreg-file-size=16384 --sreg-file-size=800 --tcc-size=256kB --gpu-clock=1801MHz --ruby-clock=1000MHz --vrf_lm_bus_latency=6 --mem-req-latency=69 --mem-resp-latency=69 --mandatory_queue_latency=1 --max-cu-tokens=160 --max-coalesces-per-cycle=10 --sqc-size=16kB --tcp-size=512B --scalar-mem-req-latency=28 --TCP_latency=4 --tcp-assoc=4 --tcp-num-banks=16 --TCC_latency=121 --tcc-assoc=16 --tcc-tag-access-latency=1 --tcc-data-access-latency=1 --tcp-rp=NRURP --WB_L2 --tcc-rp=NRURP -c gpu_test/nru_test_1 > tick_info/nru_test_1.txt
docker run --volume $(pwd):$(pwd) -w $(pwd) gcr.io/gem5-test/gcn-gpu:v22-1 build/VEGA_X86/gem5.opt --debug-flag=GPUKernelInfo configs/example/apu_se.py -n 3 --dgpu --gfx-version=gfx900 --num-compute-units=4 --cu-per-sa=4 --num-gpu-complex=1 --reg-alloc-policy=dynamic --num-tccs=8 --num-dirs=64 --mem-size=16GB --mem-type=HBM_2000_4H_1x64 --vreg-file-size=16384 --sreg-file-size=800 --tcc-size=256kB --gpu-clock=1801MHz --ruby-clock=1000MHz --vrf_lm_bus_latency=6 --mem-req-latency=69 --mem-resp-latency=69 --mandatory_queue_latency=1 --max-cu-tokens=160 --max-coalesces-per-cycle=10 --sqc-size=16kB --tcp-size=512B --scalar-mem-req-latency=28 --TCP_latency=4 --tcp-assoc=4 --tcp-num-banks=16 --TCC_latency=121 --tcc-assoc=16 --tcc-tag-access-latency=1 --tcc-data-access-latency=1 --tcp-rp=RRIPRP --WB_L2 --tcc-rp=RRIPRP -c gpu_test/rrip_test_1 > tick_info/rrip_test_1.txt
docker run --volume $(pwd):$(pwd) -w $(pwd) gcr.io/gem5-test/gcn-gpu:v22-1 build/VEGA_X86/gem5.opt --debug-flag=GPUKernelInfo configs/example/apu_se.py -n 3 --dgpu --gfx-version=gfx900 --num-compute-units=4 --cu-per-sa=4 --num-gpu-complex=1 --reg-alloc-policy=dynamic --num-tccs=8 --num-dirs=64 --mem-size=16GB --mem-type=HBM_2000_4H_1x64 --vreg-file-size=16384 --sreg-file-size=800 --tcc-size=256kB --gpu-clock=1801MHz --ruby-clock=1000MHz --vrf_lm_bus_latency=6 --mem-req-latency=69 --mem-resp-latency=69 --mandatory_queue_latency=1 --max-cu-tokens=160 --max-coalesces-per-cycle=10 --sqc-size=16kB --tcp-size=512B --scalar-mem-req-latency=28 --TCP_latency=4 --tcp-assoc=4 --tcp-num-banks=16 --TCC_latency=121 --tcc-assoc=16 --tcc-tag-access-latency=1 --tcc-data-access-latency=1 --tcp-rp=RRIPRP --WB_L2 --tcc-rp=RRIPRP -c gpu_test/rrip_test_2 > tick_info/rrip_test_2.txt
docker run --volume $(pwd):$(pwd) -w $(pwd) gcr.io/gem5-test/gcn-gpu:v22-1 build/VEGA_X86/gem5.opt --debug-flag=GPUKernelInfo configs/example/apu_se.py -n 3 --dgpu --gfx-version=gfx900 --num-compute-units=4 --cu-per-sa=4 --num-gpu-complex=1 --reg-alloc-policy=dynamic --num-tccs=8 --num-dirs=64 --mem-size=16GB --mem-type=HBM_2000_4H_1x64 --vreg-file-size=16384 --sreg-file-size=800 --tcc-size=256kB --gpu-clock=1801MHz --ruby-clock=1000MHz --vrf_lm_bus_latency=6 --mem-req-latency=69 --mem-resp-latency=69 --mandatory_queue_latency=1 --max-cu-tokens=160 --max-coalesces-per-cycle=10 --sqc-size=16kB --tcp-size=512B --scalar-mem-req-latency=28 --TCP_latency=4 --tcp-assoc=4 --tcp-num-banks=16 --TCC_latency=121 --tcc-assoc=16 --tcc-tag-access-latency=1 --tcc-data-access-latency=1 --tcp-rp=SecondChanceRP --WB_L2 --tcc-rp=SecondChanceRP -c gpu_test/second_chance_test_1 > tick_info/second_chance_test_1.txt
docker run --volume $(pwd):$(pwd) -w $(pwd) gcr.io/gem5-test/gcn-gpu:v22-1 build/VEGA_X86/gem5.opt --debug-flag=GPUKernelInfo configs/example/apu_se.py -n 3 --dgpu --gfx-version=gfx900 --num-compute-units=4 --cu-per-sa=4 --num-gpu-complex=1 --reg-alloc-policy=dynamic --num-tccs=8 --num-dirs=64 --mem-size=16GB --mem-type=HBM_2000_4H_1x64 --vreg-file-size=16384 --sreg-file-size=800 --tcc-size=256kB --gpu-clock=1801MHz --ruby-clock=1000MHz --vrf_lm_bus_latency=6 --mem-req-latency=69 --mem-resp-latency=69 --mandatory_queue_latency=1 --max-cu-tokens=160 --max-coalesces-per-cycle=10 --sqc-size=16kB --tcp-size=512B --scalar-mem-req-latency=28 --TCP_latency=4 --tcp-assoc=4 --tcp-num-banks=16 --TCC_latency=121 --tcc-assoc=16 --tcc-tag-access-latency=1 --tcc-data-access-latency=1 --tcp-rp=SecondChanceRP --WB_L2 --tcc-rp=SecondChanceRP -c gpu_test/second_chance_test_2 > tick_info/second_chance_test_2.txt
docker run --volume $(pwd):$(pwd) -w $(pwd) gcr.io/gem5-test/gcn-gpu:v22-1 build/VEGA_X86/gem5.opt --debug-flag=GPUKernelInfo configs/example/apu_se.py -n 3 --dgpu --gfx-version=gfx900 --num-compute-units=4 --cu-per-sa=4 --num-gpu-complex=1 --reg-alloc-policy=dynamic --num-tccs=8 --num-dirs=64 --mem-size=16GB --mem-type=HBM_2000_4H_1x64 --vreg-file-size=16384 --sreg-file-size=800 --tcc-size=256kB --gpu-clock=1801MHz --ruby-clock=1000MHz --vrf_lm_bus_latency=6 --mem-req-latency=69 --mem-resp-latency=69 --mandatory_queue_latency=1 --max-cu-tokens=160 --max-coalesces-per-cycle=10 --sqc-size=16kB --tcp-size=512B --scalar-mem-req-latency=28 --TCP_latency=4 --tcp-assoc=4 --tcp-num-banks=16 --TCC_latency=121 --tcc-assoc=16 --tcc-tag-access-latency=1 --tcc-data-access-latency=1 --tcp-rp=SecondChanceRP --WB_L2 --tcc-rp=SecondChanceRP -c gpu_test/second_chance_test_3 > tick_info/second_chance_test_3.txt
docker run --volume $(pwd):$(pwd) -w $(pwd) gcr.io/gem5-test/gcn-gpu:v22-1 build/VEGA_X86/gem5.opt --debug-flag=GPUKernelInfo configs/example/apu_se.py -n 3 --dgpu --gfx-version=gfx900 --num-compute-units=4 --cu-per-sa=4 --num-gpu-complex=1 --reg-alloc-policy=dynamic --num-tccs=8 --num-dirs=64 --mem-size=16GB --mem-type=HBM_2000_4H_1x64 --vreg-file-size=16384 --sreg-file-size=800 --tcc-size=256kB --gpu-clock=1801MHz --ruby-clock=1000MHz --vrf_lm_bus_latency=6 --mem-req-latency=69 --mem-resp-latency=69 --mandatory_queue_latency=1 --max-cu-tokens=160 --max-coalesces-per-cycle=10 --sqc-size=16kB --tcp-size=512B --scalar-mem-req-latency=28 --TCP_latency=4 --tcp-assoc=4 --tcp-num-banks=16 --TCC_latency=121 --tcc-assoc=16 --tcc-tag-access-latency=1 --tcc-data-access-latency=1 --tcp-rp=TreePLRURP --WB_L2 --tcc-rp=TreePLRURP -c gpu_test/tree_plru_test_1 > tick_info/tree_plru_test_1.txt
docker run --volume $(pwd):$(pwd) -w $(pwd) gcr.io/gem5-test/gcn-gpu:v22-1 build/VEGA_X86/gem5.opt --debug-flag=GPUKernelInfo configs/example/apu_se.py -n 3 --dgpu --gfx-version=gfx900 --num-compute-units=4 --cu-per-sa=4 --num-gpu-complex=1 --reg-alloc-policy=dynamic --num-tccs=8 --num-dirs=64 --mem-size=16GB --mem-type=HBM_2000_4H_1x64 --vreg-file-size=16384 --sreg-file-size=800 --tcc-size=256kB --gpu-clock=1801MHz --ruby-clock=1000MHz --vrf_lm_bus_latency=6 --mem-req-latency=69 --mem-resp-latency=69 --mandatory_queue_latency=1 --max-cu-tokens=160 --max-coalesces-per-cycle=10 --sqc-size=16kB --tcp-size=512B --scalar-mem-req-latency=28 --TCP_latency=4 --tcp-assoc=4 --tcp-num-banks=16 --TCC_latency=121 --tcc-assoc=16 --tcc-tag-access-latency=1 --tcc-data-access-latency=1 --tcp-rp=TreePLRURP --WB_L2 --tcc-rp=TreePLRURP -c gpu_test/tree_plru_test_2 > tick_info/tree_plru_test_2.txt
docker run --volume $(pwd):$(pwd) -w $(pwd) gcr.io/gem5-test/gcn-gpu:v22-1 build/VEGA_X86/gem5.opt --debug-flag=GPUKernelInfo configs/example/apu_se.py -n 3 --dgpu --gfx-version=gfx900 --num-compute-units=4 --cu-per-sa=4 --num-gpu-complex=1 --reg-alloc-policy=dynamic --num-tccs=8 --num-dirs=64 --mem-size=16GB --mem-type=HBM_2000_4H_1x64 --vreg-file-size=16384 --sreg-file-size=800 --tcc-size=256kB --gpu-clock=1801MHz --ruby-clock=1000MHz --vrf_lm_bus_latency=6 --mem-req-latency=69 --mem-resp-latency=69 --mandatory_queue_latency=1 --max-cu-tokens=160 --max-coalesces-per-cycle=10 --sqc-size=16kB --tcp-size=512B --scalar-mem-req-latency=28 --TCP_latency=4 --tcp-assoc=4 --tcp-num-banks=16 --TCC_latency=121 --tcc-assoc=16 --tcc-tag-access-latency=1 --tcc-data-access-latency=1 --tcp-rp=TreePLRURP --WB_L2 --tcc-rp=TreePLRURP -c gpu_test/tree_plru_test_3 > tick_info/tree_plru_test_3.txt