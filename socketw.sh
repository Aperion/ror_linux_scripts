#!/bin/bash
rm -rf SocketW
mkdir SocketW
pushd SocketW

wget http://www.digitalfanatics.org/cal/socketw/files/SocketW031026.tar.gz -O SocketW031026.tar.gz
tar xzf SocketW031026.tar.gz

pushd SocketW031026
wget http://wiki.rigsofrods.com/images/c/c0/Socketw.patch -O Socketw.patch
patch -p0 -d src < Socketw.patch

rm Socketw.patch
make -j2 --silent shared
sudo make install
popd # SocketW031026

popd # SocketW
