#!/bin/bash -x

count=1
while [ $count != 3 ]
do
	echo $count
	(( count ++ ))
done
