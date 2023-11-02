#!/bin/bash
echo "ENter a string"
read str

#n=`wc -c $str | cut -d " " -f1`
n=`echo $str | wc -c`
while [ $n -gt 0 ]
do
	echo $str | cut -c$n >> temp
	n=`expr $n - 1`
done
cat temp | tr -d "\n"
echo "\n"
rm temp
