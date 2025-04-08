FROM nvidia/cuda:11.8.0-cudnn8-devel-ubuntu22.04

RUN apt -y update
RUN apt install -y sudo apt-utils git
RUN apt install -y python3 python3-pip python3.10-venv
RUN apt install -y libgl1 libglib2.0-0

RUN mkdir /src
WORKDIR /src

COPY requirements.txt .
RUN pip install -r requirements.txt
