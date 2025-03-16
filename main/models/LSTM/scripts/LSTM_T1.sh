#!/bin/bash
#BSUB -n 1
#BSUB -W 48:00
#BSUB -q gpu
#BSUB -gpu "num=1"
#BSUB -J LSTM_T1_default
#BSUB -o /share/csc591s25/sgundew/GenAI-for-Systems-Gym/homework-1/models/LSTM/logs/out.%J
#BSUB -e /share/csc591s25/sgundew/GenAI-for-Systems-Gym/homework-1/models/LSTM/logs/err.%J


source ~/.bashrc
conda activate /share/$GROUP/conda_env/new_env
cd /share/$GROUP/$USER/GenAI-for-Systems-Gym/homework-1/models/LSTM

python3 -m cache_replacement.policy_learning.cache_model.main \
  --experiment_base_dir=/share/$GROUP/$USER/GenAI-for-Systems-Gym/homework-1/models/LSTM/experiments \
  --experiment_name=LSTM_T1_default \
  --cache_configs=cache_replacement/policy_learning/cache/configs/default.json \
  --model_bindings="loss=[\"ndcg\", \"reuse_dist\"]" \
  --model_bindings="address_embedder.max_vocab_size=5000" \
  --train_memtrace=cache_replacement/policy_learning/cache/traces/sample_trace.csv \
  --valid_memtrace=cache_replacement/policy_learning/cache/traces/sample_trace.csv
