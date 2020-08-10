#!/bin/bash -x

#CONSTANTS
FIRST=$(( RANDOM % 900 + 100 ))
SECOND=$(( RANDOM % 900 + 100 ))
THIRD=$(( RANDOM % 900 + 100 ))
FOURTH=$(( RANDOM % 900 + 100 ))
FIFTH=$(( RANDOM % 900 + 100 ))

#VARIABLES
min=$FIRST
max=$FIFTH

if [ $SECOND -lt $min ]
then
	min=$SECOND
fi

if [ $FIRST -gt $max ]
then
	max=$FIRST
fi

if [ $THIRD -lt $min ]
then
	min=$THIRD
fi

if [ $SECOND -gt $max ]
then
	max=$SECOND
fi

if [ $FOURTH -lt $min ]
then
	min=$FOURTH
fi

if [ $THIRD -gt $max ]
then
	max=$THIRD
fi

if [ $FIFTH -lt $min ]
then
	min=$FIFTH
fi

if [ $FOURTH -gt $max ]
then
	max=$FOURTH
fi

echo "The maximum is $max"
echo "The minimun is $min"
