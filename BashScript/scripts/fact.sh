#!/bin/bash
n=$1
fact=1
while [ $n -gt 0 ]
do
	fact=`expr $fact \* $n`
	n=`expr $n - 1`
done
echo "Factorial of $1 is $fact"
