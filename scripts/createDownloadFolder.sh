#!/bin/bash

# get date
DATE=$(date --date="today" +%Y%m%d)

# base directory
DIR_PREFIX="/home/$(whoami)/Downloads"

# setup firefox
FF_DIR="$DIR_PREFIX/archive/firefox/$DATE"
FF_LINK="$DIR_PREFIX/firefox"
mkdir -p $FF_DIR
if [ -e $FF_LINK ]
then
  unlink $FF_LINK
fi
ln -s $FF_DIR $FF_LINK

# setup skype
SKYPE_DIR="$DIR_PREFIX/archive/skype/$DATE"
SYKPE_LINK="$DIR_PREFIX/skype"
mkdir -p $SKYPE_DIR
if [ -e $SYKPE_LINK ]
then
  unlink $SYKPE_LINK
fi
ln -s $SKYPE_DIR $SYKPE_LINK
