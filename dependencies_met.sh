#!/bin/bash

function check_version() {
  if ! pkg-config --exists $1
  then 
    echo "$1 has not been installed"
    EXIT_CODE=1
  else
    if ! pkg-config --atleast-version=$2 $1
    then	
      echo "$1 version `pkg-config --modversion $1` is older than the required version: $2"
      EXIT_CODE=1
    fi
  fi
}

check_version OGRE 1.7.4
check_version OIS  1.3
check_version MYGUI 3.2.0
check_version lua5.1 5.1.4
check_version openal 1.13
check_version Caelum 0.6.1

exit $EXIT_CODE

