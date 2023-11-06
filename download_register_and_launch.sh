#!/bin/bash
sleep 5

if [[ "${LIST}" == "1" ]]; then
  xinference registrations
else
  python login.py
  xinference launch --model-name $LLM_NAME --size-in-billions $LLM_SIZE --model-format $LLM_FORMAT --n-gpu $N_GPUS --endpoint "http://127.0.0.1:9997"
fi
