#!/bin/bash

#config files
files=(
	.vimrc
	.tmux.conf
	.gitconfig
)

#clean up already existing files
mkdir -v ~/old-configs

for file in ${files[*]} 
do
	echo ${file}
	mv -v ~/${file} ~/old-configs/  
	ln -sfnv $PWD/${file} ~/${file}
done
