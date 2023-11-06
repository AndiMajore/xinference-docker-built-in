# xinference-docker-hf

This project allows easy deployment of any built-in LLM using [xinference](https://github.com/xorbitsai/inference) and docker.

## Get started

1. Install docker and docker-compose (now also 'docker compose') on your machine.
2. Install nvidia-docker libraries (find details about the Nvidia-Container Toolkit [here](https://hub.docker.com/r/nvidia/cuda))
3. Run `docker-compose build && docker-compose up -d`. This should build and start a container in the background that downloads and runs the vicuna-16k (13b) model.
4. Optional: You can adjust the [vicuna.env file](https://github.com/AndiMajore/xinference-docker-built-in/blob/master/vicuna-13b.env) to download any other built-in model (find a list [here](https://inference.readthedocs.io/en/latest/models/builtin/index.html)).

## TODO
- Built-in llama-2 models might need authorization through hugginface account
