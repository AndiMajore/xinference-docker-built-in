# xinference-docker-hf

This project allows easy deployment of any built-in LLM using [xinference](https://github.com/xorbitsai/inference) and docker.

## Get started

1. Install docker and docker-compose (now also 'docker compose') on your machine.
2. Install nvidia-docker libraries (find details about the Nvidia-Container Toolkit [here](https://hub.docker.com/r/nvidia/cuda))
3. Run `docker-compose pull` to use a pre-build image or `docker-compose build` to build it locally.
4. Run `docker-compose up -d`. This should start a container in the background that downloads and runs the vicuna-16k (13b) model.
5. Optional: There are two example environment file examples that can be commented and un-commented in the docker-compose.yml. The llama-2-chat file shows you how to use models that require a huggingface access token (if the token is placed in the .env file).

## Info
You can find a list of available LLM models in two ways:
1. Set the environment variable `LIST=1` in the active .env file. Run `docker-compose up`, which will run the container attached until it prints a list of all available LLMs
2. Find a maybe not up-to-date list in the xinference documentation [here](https://inference.readthedocs.io/en/latest/models/builtin/index.html)
