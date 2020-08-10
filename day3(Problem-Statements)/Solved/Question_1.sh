#!/bin/bash -x

for id in `cat /etc/passwd | awk -F: '{print $3}'`
do
	if [ $id -gt 1000 ]
	then
		path=`cat /etc/passwd | grep $id | awk -F: '{print $6}'`
		chown $id $path
	fi
done
