#!/bin/bash
n=`wc -l $1 | cut -d " " -f1`
while [ $n -gt 0 ]
do
	nth_line=`sed -n "$n"p $1`
	echo $nth_line
	n=`expr $n - 1`
done
