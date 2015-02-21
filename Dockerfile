FROM ubuntu:14.04
MAINTAINER Adrien Lemaire "dori@alpacadb.com"

# System packages
RUN apt-get update
RUN apt-get install -y build-essential wget vim g++
RUN apt-get install -y python-pip python-dev
RUN apt-get install -y libblas-dev libatlas-dev libatlas-base-dev liblapack-dev
RUN apt-get install -y gfortran libpq-dev libjpeg-dev 
RUN apt-get update
RUN apt-get install -y libopencv-dev --fix-missing

# Python requirements
RUN easy_install -U pip
RUN pip install Cython==0.20.2
RUN pip install Pillow==2.7.0
RUN pip install numpy==1.9.1
RUN pip install scipy==0.14.0
RUN pip install scikit-image==0.10.1
RUN pip install matplotlib==1.4.3
RUN pip install gevent==1.0.1
RUN pip install mprpc==0.1.2
RUN pip install joblib==0.8.4
RUN pip install  pika==0.9.14
RUN pip install fluent-logger==0.3.4
RUN pip install psycopg2==2.5.4
