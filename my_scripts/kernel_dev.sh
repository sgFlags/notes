#!/bin/bash

STUDY_DIR="/home/bai/study"
DEVELOPMENT_DIR="$STUDY_DIR/development"

if [[ ! -d $STUDY_DIR ]]
then
	mkdir $STUDY_DIR
fi

cd $STUDY_DIR

if [[ ! -d $DEVELOPMENT_DIR ]]
then
	git clone git@github.com:sgFlags/kernel_dev development
fi

cd $DEVELOPMENT_DIR/linux-*
ctags -R
cscope -Rbq
cd $DEVELOPMENT_DIR/qemu-*
ctags -R
cscope -Rbq
