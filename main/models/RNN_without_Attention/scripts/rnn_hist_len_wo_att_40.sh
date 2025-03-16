#!/bin/bash
#BSUB -n 1
#BSUB -W 48:00
#BSUB -q gpu
#BSUB -gpu "num=1"
#BSUB -J rnn_hist_len_wo_att_40
#BSUB -o /share/csc591s25/sgundew/GenAI-for-Systems-Gym/homework-1/models/RNN_without_Attention/logs/out.%J
#BSUB -e /share/csc591s25/sgundew/GenAI-for-Systems-Gym/homework-1/models/RNN_without_Attention/logs/err.%J


source ~/.bashrc
conda activate /share/$GROUP/conda_env/new_env
cd /share/$GROUP/$USER/GenAI-for-Systems-Gym/homework-1/models/RNN_without_Attention

python3 -m cache_replacement.policy_learning.cache_model.main \
  --experiment_base_dir=/share/$GROUP/$USER/GenAI-for-Systems-Gym/homework-1/models/RNN_without_Attention/experiments \
  --experiment_name=rnn_hist_len_wo_att_40 \
  --cache_configs=cache_replacement/policy_learning/cache/configs/default.json \
  --model_bindings="loss=[\"ndcg\", \"reuse_dist\"]" \
  --model_bindings="sequence_length=40" \
  --model_bindings="address_embedder.max_vocab_size=5000" \
  --train_memtrace=/share/$GROUP/traces/astar_313B_train.csv \
  --valid_memtrace=/share/$GROUP/traces/astar_313B_valid.csv
