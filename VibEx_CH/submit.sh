#!/bin/bash
######################################################
# qsub arguments
######################################################
#SBATCH --job-name=5q-%seed%
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --partition=long
#SBATCH --mem-per-cpu=3000MB
######################################################
# lib 
######################################################
######################################################
# Collect arguments
######################################################
source /cluster/home/song/anaconda3/bin/activate pycharmm

#python3 test-%seed%.py > /cluster/data/song/ch2oo-project/MD-simulations/5162-5-quanta/output%seed%.out

for x in $(seq 1 10);do
    python3 test-%seed%-${x}.py > /cluster/data/song/ch2oo-project/MD-simulations/5162-5-quanta/output%seed%-${x}.out
    python3 check_last_frame.py -i nve_seed%seed%-${x}.dcd
    return_code=$?
    if [ $return_code -eq 0 ];then
       break
    fi
done


