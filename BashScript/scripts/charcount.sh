#!/bin/bash
n=1
while read line
do
	wcc=`echo $line | wc -c`
	echo "$n : $wcc"
	n=`expr $n + 1`
done < $1
