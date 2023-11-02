#!/bin/bash

count=1
while read line
do
	if [ $count -eq 1 ];then
		count=`expr $count + 1`
		continue
	else
		echo $line
	fi
done < $1
