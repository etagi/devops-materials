#!/bin/bash
fact()
{
	n=$1
	fact=1
	while [ $n -gt 1 ]
	do
		fact=`expr $fact \* $n`
		n=`expr $n - 1`
	done
	echo "The factorial of $1 is $fact"
}

for i in $*
do
	fact $i
done
