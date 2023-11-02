#!/bin/bash
read -p "Enter the num1 : " num1
read -p "Enter the num2 : " num2

# bc will return 0 for false and 1 for true
if [ $(echo $num1 == $num2 | bc) -ne 0 ];then
	echo "$num1 is equal to $num2"
elif [ $(echo $num1 > $num2 | bc) -ne 0 ];then
	echo "$num1 is greater than $num2"
else
	echo "$num2 is greater than $num1"
fi

set -n

