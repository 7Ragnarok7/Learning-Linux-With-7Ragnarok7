#!/bin/bash -x

#CONSTANTS
FIRST=$(( RANDOM % 90 + 10 ))
SECOND=$((RANDOM % 90 + 10 ))
THIRD=$((RANDOM % 90 + 10 ))
FOURTH=$(( RANDOM % 90 + 10 ))
FIFTH=$(( RANDOM % 90 + 10 ))

sum=$(($FIRST + $SECOND + $THIRD + $FOURTH + $FIFTH ))
avg=$sum/5
echo "The sum is $sum"
echo "The average is $avg"
