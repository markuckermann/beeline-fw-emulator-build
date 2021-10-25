FROM ubuntu:20.04

RUN apt-get -y upgrade

# avoid stuck build due to user prompt
ARG DEBIAN_FRONTEND=noninteractive

# libgl1-mesa-dev and libglib2.0-0 required for opencv to run 
RUN apt-get update -y && apt-get -y install mingw-w64 build-essential srecord python3.9 python3.9-dev python3.9-venv python3-wheel git libgl1-mesa-dev libglib2.0-0 && apt-get clean

WORKDIR /home

# create and activate virtual environment
RUN python3.9 -m venv /home/venv
ENV VIRTUAL_ENV=/home/venv
ENV PATH="/home/venv/bin:$PATH"

COPY requirements.txt /home

RUN pip install --upgrade pip
RUN pip install --trusted-host pypi.python.org -r requirements.txt
