#!/bin/bash -x

#CONSTANTS
isPartTime=1
isFullTime=2
empRatePerHr=20
randomCheck=$(( RANDOM % 3 ))

if [ $isFullTime -eq $randomCheck ]
then
	empHrs=8
elif [ $isPartTime -eq $randomCheck ]
then
	empHrs=4
else
	empHrs=0
fi

salary=$(( $empHrs * $empRatePerHr ))
echo $salary
