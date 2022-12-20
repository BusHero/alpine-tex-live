#!/bin/sh
errors=0

for script in /smoke-tests/tests/*.sh
do
	error=0
	( . $script ) || error=$?
	if [ $error -ne 0 ]; then
		errors=`expr $errors + 1`
	fi
done

exit $errors
