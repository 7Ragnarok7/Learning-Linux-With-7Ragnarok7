#!/bin/bash -x

for file in /var/log/*
do
	number=`grep systemd $file | awk '{print NR}' | tail -1`
	if [ "$number" == "" ]
	then
		number=0
	fi
	echo ${file##*/} : $number
done
