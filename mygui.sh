#!/bin/bash
rm -rf my-gui
svn co https://my-gui.svn.sourceforge.net/svnroot/my-gui/trunk my-gui -r 4344
pushd my-gui
cmake -DCMAKE_BUILD_TYPE:STRING=Release -DMYGUI_BUILD_SAMPLES:BOOL=OFF -DMYGUI_INSTALL_SAMPLES:BOOL=OFF -DMYGUI_BUILD_TOOLS:BOOL=OFF -DMYGUI_BUILD_PLUGINS:BOOL=OFF .
make -j2
sudo make install
popd
