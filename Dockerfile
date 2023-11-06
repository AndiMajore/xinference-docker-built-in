FROM andimajore/mamba_nvidia_ubuntu:latest

RUN mamba install python=3.9
RUN apt-get install -y nodejs npm
RUN mamba install -c conda-forge cxx-compiler
# Install all xinference dependencies
RUN pip install xinference[all]

RUN mamba install git

# Install specific xinference version
RUN git clone https://github.com/AndiMajore/inference.git

RUN pip install ./inference
WORKDIR ./inference/xinference/web/ui
RUN npm install
RUN npm run build
RUN cp -r ./build /opt/conda/lib/python3.9/site-packages/xinference/web/ui/build

RUN wget https://github.com/git-lfs/git-lfs/releases/download/v3.4.0/git-lfs-linux-amd64-v3.4.0.tar.gz
RUN tar -xzvf git-lfs-linux-amd64-v3.4.0.tar.gz
WORKDIR git-lfs-3.4.0
RUN bash install.sh

RUN mamba install -c conda-forge huggingface_hub

WORKDIR /opt/conda/lib/python3.9/site-packages/xinference/

COPY ./launch_script.sh .
COPY ./download_register_and_launch.sh .
COPY ./login_and_download.py .
