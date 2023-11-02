#!/bin/bash
if [ $# -ne 3 ];then
        echo "Enter three number after the command"
elif [ $(echo "$1 ==  $2" | bc) -eq 0 ] && [ $(echo "$2 ==  $3" | bc) -eq 0 ];then
        echo "All the three numbers are equal"
elif [ $1 -gt $2 ] && [ $1 -gt $3 ];then
        echo "$1 is greater than $2, $3"
elif [ $2 -gt $1 ] && [ $2 -gt $3 ];then
        echo "$2 is greater than $1, $3"
else
        echo "$3 is greater than $1, $2"
fi
~

