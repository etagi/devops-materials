#!/bin/bash
echo "Enter num 1"
read num1
echo "Enter num 2"
read num2
echo "Enter num 3"
read num3

#if [ $# -ne 3 ];then
#	echo "Enter three number after the command"
if [ $num1 -eq $num2 ] && [ $num1 -eq $num3 ];then
	echo "All the three numbers are equal"
elif [ $num1 -ge $num2 ] && [ $num1 -ge $num3 ];then
	echo "$num1 is greater than $num2, $num3"
elif [ $num2 -ge $num1 ] && [ $num2 -ge $num3 ];then
	echo "$num2 is greater than $num1, $num3"
else
	echo "$num3 is greater than $num1, $num2"
fi
