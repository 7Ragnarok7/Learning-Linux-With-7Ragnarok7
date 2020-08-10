#!/bin/bash -x

path=`whereis hello | awk '{print $2}'`
echo -e "\nExecuting Hello....."
if [ "$path" == "" ]
then
	echo Execution failed as hello is not found
else
	hello
fi

path=`whereis ls | awk '{print $2}'`
echo -e "\nExecuting ls....."
if [ "$path" == "" ]
then
	echo Execution failed as ls is not found
else
	ls
fi
