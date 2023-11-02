#!/bin/bash

if [ $1 -gt $2 ]
then
	echo "$1 is greater"
elif [ $2 -gt $1 ]
then
	echo "$2 is greter"
else
	echo "Both are equal"
fi
