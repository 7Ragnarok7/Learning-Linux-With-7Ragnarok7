#!/bin/bash -x

for file in `ls *.log.1`
do
	filename=`echo $file | awk -F. '{print $1}'`
	date=`date -I | awk -F- '{print $3$2$1}'`
	filename=`echo $filename-$date.log`
	mv $file $filename
done
