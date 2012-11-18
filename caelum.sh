#!/bin/bash
rm -rf caelum
hg clone https://caelum.googlecode.com/hg/ caelum 
pushd caelum
cmake .
make -j8
sudo make install
popd

