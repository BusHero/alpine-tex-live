#!/bin/sh
file_exist=1

cd tmp/
pdflatex small2e
if [ ! -f /tmp/small2e.pdf ]; then
	echo "'pdflatex small2e' failed to create a pdf file"
	file_exist=0
fi
rm -rf tmp/small2e.*

if [ $file_exist -eq 0 ]; then
	exit 1
fi
