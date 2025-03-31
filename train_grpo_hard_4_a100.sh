export CUDA_VISIBLE_DEVICES=0,1,2,3


bash train_grpo_math_tune_ray.sh --model_name Qwen2.5-Math-7B --max_response_length 1024  --train_batch_size 512 --ppo_mini_batch_size 64 --ppo_micro_batch_size 4 --log_prob_micro_batch_size 16  --micro_rollout_batch_size 256 --rollout_n 4 --kl_loss_coef 0.0001 --entropy_coeffient 0.001 --rollout_gpu_memory_util 0.6 --rollout_tp 2 --save_freq 20 --test_freq 20 --dataset_name math_hard 