#!/bin/bash
echo "Enter the name of file or directory"
read name
if [ -e $name ];then
	if [ -f $name ];then
		echo "Given input $name is a file"
	elif [ -d $name ];then
		echo "Given input $name is a directory"
	else
		echo "Not a file or directory"
	fi
else
	echo "The given input $name does not exist"
fi
