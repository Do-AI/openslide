FROM nvidia/cuda:10.1-devel-ubuntu18.04

WORKDIR /home

COPY . /home/openslide

RUN apt-get update && apt-get install -y build-essential \
default-jdk \
python3.6-venv \
curl \
git \
pkg-config \
libtool-bin \
automake \
libcurl4-openssl-dev \
zlib1g-dev \
libjpeg-dev \
libopenjp2-7-dev \
libtiff-dev \
libglib2.0-dev \
libcairo2-dev \
libgdk-pixbuf2.0-dev \
libxml2-dev \
libsqlite3-dev \
sqlite3 \
libgl1-mesa-glx

# openslide install
RUN /bin/bash openslide/install_openslide.sh