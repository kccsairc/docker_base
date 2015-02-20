FROM ubuntu:14.04
MAINTAINER Adrien Lemaire "dori@alpacadb.com"

# System packages
RUN apt-get update
RUN apt-get -y install build-essential wget vim
RUN apt-get -y install libjpeg-dev libopencv-dev python-pip python-dev \
    libblas-dev libatlas-dev libatlas-base-dev liblapack-dev gfortran libpq-dev

# Python requirements
RUN easy_install -U pip
RUN pip install Cython numpy scipy scikit-image gevent mprpc joblib Pillow \
    matplotlib pika==0.9.14 fluent-logger==0.3.4 psycopg2==2.5.4
