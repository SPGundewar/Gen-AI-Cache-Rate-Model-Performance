#!/bin/bash
#BSUB -n 1
#BSUB -W 48:00
#BSUB -q gpu
#BSUB -gpu "num=1"
#BSUB -J MLP_num_lay_1
#BSUB -o /share/csc591s25/sgundew/GenAI-for-Systems-Gym/homework-1/models/MLP/logs/out.%J
#BSUB -e /share/csc591s25/sgundew/GenAI-for-Systems-Gym/homework-1/models/MLP/logs/err.%J


source ~/.bashrc
conda activate /share/$GROUP/conda_env/new_env
cd /share/$GROUP/$USER/GenAI-for-Systems-Gym/homework-1/models/MLP

python3 -m cache_replacement.policy_learning.cache_model.main_num_lay_1 \
  --experiment_base_dir=/share/$GROUP/$USER/GenAI-for-Systems-Gym/homework-1/models/MLP/experiments \
  --experiment_name=train_astar_MLP_num_lay_1 \
  --cache_configs=cache_replacement/policy_learning/cache/configs/default.json \
  --model_bindings="address_embedder.max_vocab_size=5000" \
  --train_memtrace=/share/$GROUP/traces/astar_313B_train.csv \
  --valid_memtrace=/share/$GROUP/traces/astar_313B_valid.csv
