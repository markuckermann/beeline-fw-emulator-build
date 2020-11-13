FROM ubuntu:18.04

RUN apt-get -y upgrade
RUN apt-get update -y 

# libgl1-mesa-dev required for opencv to run 
RUN apt-get -y install mingw-w64 build-essential srecord python3 python3-pip git libgl1-mesa-dev

WORKDIR /home

COPY requirements.txt /home

RUN pip3 install --upgrade pip
RUN pip3 install --trusted-host pypi.python.org -r requirements.txt
