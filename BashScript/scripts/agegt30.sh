#!/bin/bash
sed '1d' $1 >> temp
while read line
do	
	age=`echo $line | cut -d " " -f3`
	if [ $age -ge 30 ];then
		name=`echo $line | cut -d " " -f1`
		echo $name
	fi
done < temp
rm temp
