#!/bin/bash
rm -f ogre-paged
mkdir ogre-paged
pushd ogre-paged

wget http://ogre-paged.googlecode.com/files/ogre-paged-1.1.3.tar.gz
tar xvfz ogre-paged-1.1.3.tar.gz
pushd ogre-paged-1.1.3
cmake -DCMAKE_BUILD_TYPE:STRING=Release -DPAGEDGEOMETRY_BUILD_SAMPLES:BOOL=OFF .
make -j2 --silent
sudo make install
popd # ogre-paged-1.1.3

popd # ogre-paged
