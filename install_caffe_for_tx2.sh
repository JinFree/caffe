#!/bin/bash
sudo apt-get update -y
sudo apt-get install software-properties-common -y
sudo apt-get install -y build-essential gfortran libatlas-base-dev
sudo add-apt-repository universe -y
sudo add-apt-repository multiverse -y
sudo apt-get install libboost-dev libboost-all-dev -y
sudo apt-get install libjpeg-turbo8-dev libjpeg8-dev libturbojpeg0-dev -y
sudo apt-get install liblapack-dev liblapack3 libopenblas-base libopenblas-dev -y
sudo apt-get install libgflags-dev libgoogle-glog-dev liblmdb-dev libatlas-base-dev liblmdb-dev libblas-dev libatlas-base-dev libprotobuf-dev libleveldb-dev libsnappy-dev libhdf5-serial-dev protobuf-compiler -y
cp Makefile.config.tx2 Makefile.config
echo "export PYTHONPATH=$(pwd)/python:\$PYTHONPATH" >> ~/.bashrc
sudo apt install python-pip python3-pip python-matplotlib -y
pip install cython
pip install protobuf
sudo apt install python-numpy python-skimage -y
make all -j4
make runtest -j4
make pycaffe
