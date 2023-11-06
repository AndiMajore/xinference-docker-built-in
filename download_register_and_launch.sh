#!/bin/bash
sleep 5
#python login_and_download.py
xinference launch --model-name $LLM_NAME --size-in-billions $LLM_SIZE --model-format $LLM_FORMAT --n-gpu $N_GPUS
