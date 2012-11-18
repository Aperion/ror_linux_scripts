
VERSION=1.8
BUILD=$VERSION.0
VERSION_ZIP=1-8-0
rm -rf ogre
mkdir ogre
pushd ogre

wget http://sourceforge.net/projects/ogre/files/ogre/$VERSION/$BUILD/ogre_src_v$VERSION_ZIP.tar.bz2/download -O ogre_src_v$VERSION_ZIP.tar.bz2

tar xjf ogre_src_$VERSION_ZIP.tar.bz2
pushd ogre_src_$VERSION_ZIP
cmake -DCMAKE_BUILD_TYPE:STRING=Release -DOGRE_BUILD_SAMPLES:BOOL=OFF .
make -j2
sudo make install
popd

popd