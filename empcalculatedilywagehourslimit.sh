#!/bin/bash -x
isParttime=1
isFulltime=2
maxHrs=100
empRatePerHr=20
workingDays=20

totalEmpHr=0
totalWorkingDays=0

for(($totalEmpHr,$totalWorkingDays;$totalWorkingDays<$workingDays && $totalEmpHr<$maxHrs;))
do
	(($totalWorkingDays++))
   check=$(($RANDOM%3))

   case $check in
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
   totalEmpHr=$(($totalEmpHr+$empHr))
done
salary=$(($totalEmpHr*$empRatePerHr))
