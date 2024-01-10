FROM andimajore/mamba_nvidia_ubuntu:latest

RUN apt-get update && apt-get install -y build-essential
RUN mamba install python=3.10

RUN mamba install -c conda-forge cxx-compiler

# Install all xinference dependencies
RUN pip install xinference[all]==0.7.5

RUN mamba install git
RUN wget https://github.com/git-lfs/git-lfs/releases/download/v3.4.0/git-lfs-linux-amd64-v3.4.0.tar.gz
RUN tar -xzvf git-lfs-linux-amd64-v3.4.0.tar.gz
WORKDIR git-lfs-3.4.0
RUN bash install.sh

RUN mamba install -c conda-forge huggingface_hub

WORKDIR /opt/conda/lib/python3.9/

COPY ./launch_script.sh .
COPY ./login.py .
COPY ./download_register_and_launch.sh .
