#!/usr/bin/env bash
python3 run_asr.py \
--output_dir="./wav2vec2-base-100h_dummy" \
--num_train_epochs="30" \
--per_device_train_batch_size="8" \
--per_device_eval_batch_size="8" \
--evaluation_strategy="steps" \
--save_total_limit="3" \
--save_steps="200" \
--eval_steps="100" \
--logging_steps="10" \
--learning_rate="5e-4" \
--warmup_steps="3000" \
--model_name_or_path="facebook/wav2vec2-base" \
--fp16 \
--dataset_name="patrickvonplaten/librispeech_asr_dummy" \
--dataset_config_name="clean" \
--train_split_name="validation" \
--preprocessing_num_workers="8" 