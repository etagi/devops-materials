#!/bin/bash
find -type f -name "*$1" > temp
cat temp
# set -x
while read line
do
	new_name=`echo $line | sed s/$1/$2/g`
	mv $line $new_name
	echo "$line --> $new_name"
done < temp
rm temp
