#!/bin/bash
echo "Enter a number or string"
read n

echo $n | grep "^[0-9]*$"
echo $?
if [ $? -eq 0 ];then
	echo "GIven input is a number"
fi

echo $n | grep "^[a-zA-Z]*$"
echo $?
if [ $? -eq 0 ];then
	echo "GIven input is a string"
fi
