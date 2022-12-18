#!/bin/sh
file_exist=1

. smoke-tests/luatex-tests.sh
if [ $? -ne 0 ]; then
	file_exist = 1
fi
. smoke-tests/pdflatex-tests.sh
if [ $? -ne 0 ]; then
	file_exist = 1
fi


if [ $file_exist -eq 0 ]; then
	exit 1
fi
