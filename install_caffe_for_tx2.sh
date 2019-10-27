#!/bin/bash
sudo apt-get update -y
sudo apt-get install software-properties-common -y
sudo add-apt-repository universe -y
sudo add-apt-repository multiverse -y
sudo apt-get install libboost-dev libboost-all-dev -y
sudo apt-get install libjpeg-turbo8-dev libjpeg8-dev libturbojpeg0-dev -y
sudo apt-get install liblapack-dev liblapack3 libopenblas-base libopenblas-dev -y
sudo apt-get install libgflags-dev libgoogle-glog-dev liblmdb-dev libatlas-base-dev liblmdb-dev libblas-dev libatlas-base-dev libprotobuf-dev libleveldb-dev libsnappy-dev libhdf5-serial-dev protobuf-compiler -y
cp Makefile.config.tx2 Makefile.config
make -j4
make pycaffe
echo "export PYTHONPATH=\$PWD/python:\$PYTHONPATH" >> ~/.bashrc
cd /usr/lib/aarch64-linux-gnu​
sudo ln -s libhdf5_serial.so.10 libhdf5.so
sudo ln -s libhdf5_serial_hl.so.10 libhdf5_hl.so
