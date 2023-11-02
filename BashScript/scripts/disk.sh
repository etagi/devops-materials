#!/bin/bash
df -h / >> disk
percent=`sed -n '2p' disk | awk -F " " '{print$(NF-1)}' | cut -d "%" -f1`

if [ $percent -gt 70 ];then
	echo "!!! Warning : Disk is getting full"
fi
echo "CPU utilization percentage is $percent"
rm disk
