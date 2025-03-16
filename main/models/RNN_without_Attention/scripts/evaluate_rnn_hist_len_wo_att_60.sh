#!/bin/bash
#BSUB -n 1
#BSUB -W 48:00
#BSUB -J evaluation_rnn_hist_len_wo_att_60
#BSUB -o /share/csc591s25/sgundew/GenAI-for-Systems-Gym/homework-1/models/RNN_without_Attention/logs/out.%J
#BSUB -e /share/csc591s25/sgundew/GenAI-for-Systems-Gym/homework-1/models/RNN_without_Attention/logs/err.%J

source ~/.bashrc
conda activate /share/$GROUP/conda_env/new_env
cd /share/$GROUP/$USER/GenAI-for-Systems-Gym/homework-1/models/RNN_without_Attention

python3 -m cache_replacement.policy_learning.cache.main \
  --experiment_base_dir=/share/$GROUP/$USER/GenAI-for-Systems-Gym/homework-1/models/RNN_without_Attention/experiments \
  --experiment_name=evaluate_rnn_hist_len_wo_att_60\
  --cache_configs="cache_replacement/policy_learning/cache/configs/default.json" \
  --cache_configs="cache_replacement/policy_learning/cache/configs/eviction_policy/learned.json" \
  --memtrace_file="/share/$GROUP/traces/astar_313B_test.csv" \
  --config_bindings="associativity=16" \
  --config_bindings="capacity=2097152" \
  --config_bindings="eviction_policy.scorer.checkpoint=\"/share/$GROUP/$USER/GenAI-for-Systems-Gym/homework-1/models/RNN_without_Attention/experiments/rnn_hist_len_wo_att_60/checkpoints/20000.ckpt\"" \
  --config_bindings="eviction_policy.scorer.config_path=\"/share/$GROUP/$USER/GenAI-for-Systems-Gym/homework-1/models/RNN_without_Attention/experiments/rnn_hist_len_wo_att_60/model_config.json\"" \
  --warmup_period=0
