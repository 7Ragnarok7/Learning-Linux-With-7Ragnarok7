#!/bin/bash -x

#CONSTANTS
IS_PART_TIME=1
IS_FULL_TIME=2
MAX_HRS_IN_MONTH=10
EMP_RATE_PER_HR=20
MAX_WORKING_DAYS=20

#VARIABLES
totalEmpHrs=0
totalWorkingDays=0

function getWorkingHrs()
{
	case $1 in
   	 $IS_FULL_TIME)
       	 empHrs=8 ;;
       $IS_PART_TIME)
          empHrs=4 ;;
       *)
          empHrs=0 ;;
   esac
	echo $empHrs
}

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $MAX_WORKING_DAYS ]]
do
	((totalWorkingDays++));
	empHrs="$( getWorkingHrs $(( RANDOM % 3 )) )"
   totalEmpHrs=$(( $totalEmpHrs + $empHrs ))
done

totalSalary=$(( $totalEmpHrs * $EMP_RATE_PER_HR ))
echo $totalSalary
