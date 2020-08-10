#!/bin/bash 

for file in /var/log/*
do
	diff=`echo $(($(($(date +%s) - $(date +%s -r $file)))/86400))`
	if [ $diff -ge 7 ]
	then
		cp -r $file backup/
	fi
done
