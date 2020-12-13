#!/bin/bash
if [ ! -f $1 ] #test of file exists
then
	echo "No file found"
	exit 1
fi
intregex='^[0-9]+$'
if ! [[ $2 =~ $intregex ]] #test if second argument is integer
then
	echo "Second argument must be an integer"
	exit 1
	else
		echo "Head:"
		head -n $2 $1
		echo "Tail:"
		tail -n $2 $1
fi
