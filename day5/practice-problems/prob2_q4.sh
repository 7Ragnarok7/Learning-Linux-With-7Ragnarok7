#!/bin/bash -x

#CONSTANTS
HEAD=0
TAIL=1

coin=$((RANDOM%2))
if [ $coin -eq $HEAD ]
then
	echo HEAD
else
	echo TAIL
fi
