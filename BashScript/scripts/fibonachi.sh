#!/bin/bash
read -p "How many fibonachi numbers do you need? : " n

first=0
second=1
for i in `seq 1 $n`
do
	if  [ $i -le 0 ]; then
		echo "Enter a number grater than zero"
	elif [ $i -eq 1 ]; then
		echo $first >> fib
	elif [ $i -eq 2 ]; then
		echo $second >> fib
	else
		next=`expr $first + $second`
		echo $next >> fib
		first=$second
		second=$next
	fi
done
cat fib | tr "\n" "  "
echo " "
rm fib
