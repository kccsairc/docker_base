FROM ubuntu:14.04
MAINTAINER Adrien Lemaire "dori@alpacadb.com"

# System packages
RUN apt-get update
RUN apt-get -y install build-essential wget vim
RUN apt-get -y install libjpeg-dev libopencv-dev python-pip python-dev \
    libblas-dev libatlas-dev libatlas-base-dev liblapack-dev gfortran

# Python requirements
RUN easy_install -U pip
RUN pip install Cython && \
    pip install numpy && \
    pip install scipy && \
    pip install scikit-image && \
    pip install gevent && \
    pip install mprpc && \
    pip install joblib && \
    pip install Pillow && \
    pip install matplotlib 
