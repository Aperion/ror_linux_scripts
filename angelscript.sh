#!/bin/bash
MAJOR=2
MINOR=22
RELEASE=1
VERSION=$MAJOR.$MINOR.$RELEASE
SHARED=1

WORKINGDIR=`pwd`/angelscript

echo $WORKINGDIR
rm -rf $WORKINGDIR
mkdir $WORKINGDIR
pushd $WORKINGDIR

wget http://www.angelcode.com/angelscript/sdk/files/angelscript_$VERSION.zip
unzip angelscript_$VERSION.zip
popd

pushd $WORKINGDIR/sdk/angelscript/projects/gnuc
SHARED=$SHARED VERSION=$VERSION make -j2 --silent 
 
# sudo make install fails when making the symbolic link, this removes the existing versions
rm -f $WORKINGDIR/sdk/angelscript/lib/*
sudo SHARED=$SHARED VERSION=$VERSION make install
sudo cp -a $WORKINGDIR/sdk/add_on/*/ /usr/local/include/
 
#cleanup files made by root
rm -f $WORKINGDIR/sdk/angelscript/lib/*
popd
