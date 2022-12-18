#!/bin/sh
file_exist=1

mkdir /tmp/lualatex
lualatex --output-directory=/tmp/lualatex small2e
if [ ! -f /tmp/lualatex/small2e.pdf ]; then
	echo "'lualatex small2e' failed to create a pdf file"
	file_exist=0
fi
rm -rf /tmp/lualatex

if [ $file_exist -eq 0 ]; then
	exit 1
fi
