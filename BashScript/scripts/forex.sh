#!/bin/bash
sum=0
for ((i=0;i<=10;i++))
do
	sum=`expr $sum + $i`
done
echo "Sum of $* is $sum"
