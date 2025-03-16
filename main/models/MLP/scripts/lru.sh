#!/bin/bash
#BSUB -n 1
#BSUB -W 48:00
#BSUB -q gpu
#BSUB -gpu "num=1"
#BSUB -J training_phase_lru
#BSUB -o /share/csc591s25/sgundew/GenAI-for-Systems-Gym/homework-1/models/MLP/logs/out.%J
#BSUB -e /share/csc591s25/sgundew/GenAI-for-Systems-Gym/homework-1/models/MLP/logs/err.%J

source ~/.bashrc
conda activate /share/$GROUP/conda_env/new_env
cd /share/$GROUP/$USER/GenAI-for-Systems-Gym/homework-1/models/MLP

python3 -m cache_replacement.policy_learning.cache.main \
--experiment_base_dir=/share/$GROUP/$USER/GenAI-for-Systems-Gym/homework-1/models/MLP/experiments \
--experiment_name=astar_lru \
--cache_configs=cache_replacement/policy_learning/cache/configs/default.json \
--cache_configs=cache_replacement/policy_learning/cache/configs/eviction_policy/lru.json \
--memtrace_file=/share/$GROUP/traces/astar_313B_test.csv
