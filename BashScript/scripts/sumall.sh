#!/bin/bash
sum=0
for i in $*
do
	sum=`expr $sum + $i`
done
echo "Sum of $@ is $sum"
