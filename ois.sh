#!/bin/bash
rm -rf ois
mkdir ois
pushd ois

wget http://sourceforge.net/projects/wgois/files/Source%20Release/1.3/ois_v1-3.tar.gz/download -O ois_v1-3.tar.gz
tar xvfz ois_v1-3.tar.gz

pushd ois-v1-3/
sh bootstrap
./configure
make -j2
sudo make install
popd
popd