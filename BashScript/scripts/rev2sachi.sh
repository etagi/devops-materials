#!/bin/bash

echo "Enter a string:"
read str

reverse=""
len=${#str}

for i in `$len - 1` (( i=$len-1; i>=0; i-- ))
do
	if [ $i -gt 0 ];then
	       	reverse="$reverse${str:$i:1}"
	fi
	i=
done

echo "Reversed string: $reverse"
