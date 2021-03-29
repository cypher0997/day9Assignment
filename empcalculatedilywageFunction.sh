#!/bin/bash -x
isParttime=1
isFulltime=2
maxHrs=100
empRatePerHr=20
workingDays=20

totalEmpHr=0
totalWorkingDays=0

function getWorkingHours(){

   case $1 in
      $isFulltime)
         empHr=8
         ;;
      $isParttime)
         empHr=4
         ;;
      *)
         empHr=0
         ;;
   esac
   echo $empHr
}
while [[ $totalEmpHr -lt $maxHrs && $totalWorkingDays -lt $workingDays ]]
do
	((totalWorkingDays++))
	workHrs=$( getWorkingHours $(($RANDOM%3)) )
	totalEmpHr=$(($totalEmpHr+$workHrs))
done
totalSalary=$(($totalEmpHr*$empRatePerHr))
