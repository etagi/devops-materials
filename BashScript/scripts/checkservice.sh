#!/bin/bash
services="docker jenkins tomcat9 ansible"
for i in $services
do
	systemctl is-active --quiet $i
	if [ $? -ne 0 ];then
		#sudo systemctl start $i
		echo $i >> stoppedservices
	fi
done

cat stoppedservices
mail -s "Stopped services"aravindetagi@gmail.com < stoppedservices
rm stoppedservices
