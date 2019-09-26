FROM ubuntu:18.04

RUN apt-get update -y 
RUN apt-get -y install mingw-w64 build-essential srecord python3 python3-pip

WORKDIR /home

COPY requirements.txt /home

RUN pip3 install --trusted-host pypi.python.org -r requirements.txt