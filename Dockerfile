FROM ubuntu:20.04
MAINTAINER exopyl
LABEL version="0.1"

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y python3-pip python3.8-dev
RUN apt-get install -y graphviz
RUN apt-get install -y ffmpeg libsm6 libxext6

RUN pip3 install --upgrade pip
COPY requirements.txt /
RUN pip3 install -r requirements.txt
