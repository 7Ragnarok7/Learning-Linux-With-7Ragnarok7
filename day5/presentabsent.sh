#!/bin/bash -x

#CONSTANTS
ispresent=1
empratePerHr=20
empHrs=8
randomcheck=$(( RANDOM % 2 ))

if [ $ispresent -eq $randomcheck ]
then
	salary=$(( $empratePerHr * $empHrs))
else
	salary=0
fi
echo $salary
