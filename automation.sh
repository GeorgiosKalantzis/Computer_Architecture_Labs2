#!/bin/bash

./build/ARM/gem5.opt -d spec_results/specmcf_7 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=128kB --l1i_size=128kB --l2_size=512kB --l1i_assoc=4 --l1d_assoc=4 --l2_assoc=4 --cacheline_size=64 --cpu-clock=1GHz  -c spec_cpu2006/429.mcf/src/specmcf -o "spec_cpu2006/429.mcf/data/inp.in" -I 100000000

./build/ARM/gem5.opt -d spec_results/specmcf_8 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=128kB --l1i_size=128kB --l2_size=512kB --l1i_assoc=8 --l1d_assoc=8 --l2_assoc=8 --cacheline_size=64 --cpu-clock=1GHz  -c spec_cpu2006/429.mcf/src/specmcf -o "spec_cpu2006/429.mcf/data/inp.in" -I 100000000

./build/ARM/gem5.opt -d spec_results/specmcf_9 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=128kB --l1i_size=128kB --l2_size=512kB --l1i_assoc=8 --l1d_assoc=8 --l2_assoc=8 --cacheline_size=64 --cpu-clock=1GHz  -c spec_cpu2006/429.mcf/src/specmcf -o "spec_cpu2006/429.mcf/data/inp.in" -I 100000000

./build/ARM/gem5.opt -d spec_results/specmcf_10 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=128kB --l1i_size=128kB --l2_size=512kB --l1i_assoc=4 --l1d_assoc=4 --l2_assoc=4 --cacheline_size=128 --cpu-clock=1GHz  -c spec_cpu2006/429.mcf/src/specmcf -o "spec_cpu2006/429.mcf/data/inp.in" -I 100000000

./build/ARM/gem5.opt -d spec_results/specmcf_11 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=128kB --l1i_size=128kB --l2_size=512kB --l1i_assoc=4 --l1d_assoc=4 --l2_assoc=4 --cacheline_size=256 --cpu-clock=1GHz  -c spec_cpu2006/429.mcf/src/specmcf -o "spec_cpu2006/429.mcf/data/inp.in" -I 100000000

./build/ARM/gem5.opt -d spec_results/specmcf_12 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=128kB --l1i_size=128kB --l2_size=512kB --l1i_assoc=8 --l1d_assoc=8 --l2_assoc=8 --cacheline_size=256 --cpu-clock=1GHz  -c spec_cpu2006/429.mcf/src/specmcf -o "spec_cpu2006/429.mcf/data/inp.in" -I 100000000

./build/ARM/gem5.opt -d spec_results/specmcf_13 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=64kB --l1i_size=64kB --l2_size=256kB --l1i_assoc=8 --l1d_assoc=8 --l2_assoc=8 --cacheline_size=256 --cpu-clock=1GHz  -c spec_cpu2006/429.mcf/src/specmcf -o "spec_cpu2006/429.mcf/data/inp.in" -I 100000000

./build/ARM/gem5.opt -d spec_results/spechmmer_6 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=128kB --l1i_size=128kB --l2_size=512kB --l1i_assoc=2 --l1d_assoc=2 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c spec_cpu2006/456.hmmer/src/spechmmer -o "--fixed 0 --mean 325 --num 45000 --sd 200 –seed 0 spec_cpu2006/456.hmmer/data/bombesin.hmm" -I 10000000

./build/ARM/gem5.opt -d spec_results/spechmmer_7 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=128kB --l1i_size=128kB --l2_size=512kB --l1i_assoc=4 --l1d_assoc=4 --l2_assoc=4 --cacheline_size=64 --cpu-clock=1GHz -c spec_cpu2006/456.hmmer/src/spechmmer -o "--fixed 0 --mean 325 --num 45000 --sd 200 –seed 0 spec_cpu2006/456.hmmer/data/bombesin.hmm" -I 10000000

./build/ARM/gem5.opt -d spec_results/spechmmer_8 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=128kB --l1i_size=128kB --l2_size=512kB --l1i_assoc=8 --l1d_assoc=8 --l2_assoc=8 --cacheline_size=64 --cpu-clock=1GHz -c spec_cpu2006/456.hmmer/src/spechmmer -o "--fixed 0 --mean 325 --num 45000 --sd 200 –seed 0 spec_cpu2006/456.hmmer/data/bombesin.hmm" -I 10000000

./build/ARM/gem5.opt -d spec_results/spechmmer_9 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=128kB --l1i_size=128kB --l2_size=512kB --l1i_assoc=8 --l1d_assoc=8 --l2_assoc=8 --cacheline_size=128 --cpu-clock=1GHz -c spec_cpu2006/456.hmmer/src/spechmmer -o "--fixed 0 --mean 325 --num 45000 --sd 200 –seed 0 spec_cpu2006/456.hmmer/data/bombesin.hmm" -I 10000000

./build/ARM/gem5.opt -d spec_results/spechmmer_10 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=128kB --l1i_size=128kB --l2_size=512kB --l1i_assoc=8 --l1d_assoc=8 --l2_assoc=8 --cacheline_size=256 --cpu-clock=1GHz -c spec_cpu2006/456.hmmer/src/spechmmer -o "--fixed 0 --mean 325 --num 45000 --sd 200 –seed 0 spec_cpu2006/456.hmmer/data/bombesin.hmm" -I 10000000

./build/ARM/gem5.opt -d spec_results/spechmmer_11 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=128kB --l1i_size=128kB --l2_size=512kB --l1i_assoc=4 --l1d_assoc=4 --l2_assoc=4 --cacheline_size=512 --cpu-clock=1GHz -c spec_cpu2006/456.hmmer/src/spechmmer -o "--fixed 0 --mean 325 --num 45000 --sd 200 –seed 0 spec_cpu2006/456.hmmer/data/bombesin.hmm" -I 10000000

./build/ARM/gem5.opt -d spec_results/spechmmer_12 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=64kB --l1i_size=64kB --l2_size=512kB --l1i_assoc=4 --l1d_assoc=4 --l2_assoc=4 --cacheline_size=512 --cpu-clock=1GHz -c spec_cpu2006/456.hmmer/src/spechmmer -o "--fixed 0 --mean 325 --num 45000 --sd 200 –seed 0 spec_cpu2006/456.hmmer/data/bombesin.hmm" -I 10000000


./build/ARM/gem5.opt -d spec_results/specsjeng_6 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=128kB --l1i_size=128kB --l2_size=2048kB --l1i_assoc=2 --l1d_assoc=2 --l2_assoc=2 --cacheline_size=64 --cpu-clock=1GHz -c spec_cpu2006/458.sjeng/src/specsjeng -o "spec_cpu2006/458.sjeng/data/test.txt" -I 100000000


./build/ARM/gem5.opt -d spec_results/specsjeng_7 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=128kB --l1i_size=128kB --l2_size=2048kB --l1i_assoc=4 --l1d_assoc=4 --l2_assoc=4 --cacheline_size=64 --cpu-clock=1GHz -c spec_cpu2006/458.sjeng/src/specsjeng -o "spec_cpu2006/458.sjeng/data/test.txt" -I 100000000

 ./build/ARM/gem5.opt -d spec_results/specsjeng_8 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=128kB --l1i_size=128kB --l2_size=2048kB --l1i_assoc=8 --l1d_assoc=8 --l2_assoc=8 --cacheline_size=64 --cpu-clock=1GHz -c spec_cpu2006/458.sjeng/src/specsjeng -o "spec_cpu2006/458.sjeng/data/test.txt" -I 100000000


 ./build/ARM/gem5.opt -d spec_results/specsjeng_9 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=128kB --l1i_size=128kB --l2_size=2048kB --l1i_assoc=8 --l1d_assoc=8 --l2_assoc=8 --cacheline_size=128 --cpu-clock=1GHz -c spec_cpu2006/458.sjeng/src/specsjeng -o "spec_cpu2006/458.sjeng/data/test.txt" -I 100000000


 ./build/ARM/gem5.opt -d spec_results/specsjeng_10 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=128kB --l1i_size=128kB --l2_size=2048kB --l1i_assoc=8 --l1d_assoc=8 --l2_assoc=8 --cacheline_size=256 --cpu-clock=1GHz -c spec_cpu2006/458.sjeng/src/specsjeng -o "spec_cpu2006/458.sjeng/data/test.txt" -I 100000000

  ./build/ARM/gem5.opt -d spec_results/specsjeng_11 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=64kB --l1i_size=64kB --l2_size=2048kB --l1i_assoc=8 --l1d_assoc=8 --l2_assoc=8 --cacheline_size=256 --cpu-clock=1GHz -c spec_cpu2006/458.sjeng/src/specsjeng -o "spec_cpu2006/458.sjeng/data/test.txt" -I 100000000

 ./build/ARM/gem5.opt -d spec_results/speclibm_7 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=128kB --l1i_size=128kB --l2_size=2048kB --l1i_assoc=2 --l1d_assoc=2 --l2_assoc=4 --cacheline_size=64 --cpu-clock=1GHz -c spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1 spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

  ./build/ARM/gem5.opt -d spec_results/speclibm_8 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=128kB --l1i_size=128kB --l2_size=2048kB --l1i_assoc=4 --l1d_assoc=4 --l2_assoc=4 --cacheline_size=64 --cpu-clock=1GHz -c spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1 spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

 ./build/ARM/gem5.opt -d spec_results/speclibm_9 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=128kB --l1i_size=128kB --l2_size=2048kB --l1i_assoc=8 --l1d_assoc=8 --l2_assoc=8 --cacheline_size=64 --cpu-clock=1GHz -c spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1 spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

  ./build/ARM/gem5.opt -d spec_results/speclibm_10 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=128kB --l1i_size=128kB --l2_size=2048kB --l1i_assoc=8 --l1d_assoc=8 --l2_assoc=8 --cacheline_size=128 --cpu-clock=1GHz -c spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1 spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

  ./build/ARM/gem5.opt -d spec_results/speclibm_11 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=128kB --l1i_size=128kB --l2_size=2048kB --l1i_assoc=8 --l1d_assoc=8 --l2_assoc=8 --cacheline_size=256 --cpu-clock=1GHz -c spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1 spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000

 ./build/ARM/gem5.opt -d spec_results/speclibm_12 configs/example/se.py --cpu-type=MinorCPU --caches --l2cache --l1d_size=64kB --l1i_size=64kB --l2_size=1024kB --l1i_assoc=8 --l1d_assoc=8 --l2_assoc=8 --cacheline_size=256 --cpu-clock=1GHz -c spec_cpu2006/470.lbm/src/speclibm -o "20 spec_cpu2006/470.lbm/data/lbm.in 0 1 spec_cpu2006/470.lbm/data/100_100_130_cf_a.of" -I 100000000
















exit 0