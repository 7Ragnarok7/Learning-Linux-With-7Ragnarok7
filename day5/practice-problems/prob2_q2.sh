#!/bin/bash -x

read -p "Enter a day(1-31): " day
read -p "Enter a month(1-12): " month

if [ $month -ge 3 -a $month -le 6 ]
then
	if [ $month -eq 3 -a $day -lt 20 ] || [$month -eq 6 -a $day -gt 20 ]
	then
		echo FALSE
	else
		echo TRUE
	fi
else
	echo FALSE
fi


