import os, time

time.sleep(5)

from huggingface_hub import login

access_token_read = os.environ.get('HF_TOKEN_READ',None)
if access_token_read:
   login(token = access_token_read)

#from xinference.client import RESTfulClient
#model_name =os.environ.get("LLM_NAME")
#model_size = os.environ.get("LLM_SIZE")
#model_q = os.environ.get("LLM_QUANTIZATION")
#model_format = os.environ.get("LLM_FORMAT")
#client = RESTfulClient("http://127.0.0.1:9997")

#model_uid = client.launch_model(model_name=model_name,
#                                model_format=model_format,
#                                size_in_billions=model_size,
#                                quantization=model_q)

#print(model_uid)


