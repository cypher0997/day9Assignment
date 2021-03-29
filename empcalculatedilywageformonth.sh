#!/bin/bash -x
isParttime=1
isFulltime=2
tottalSalary=0
empRatePerHr=20
workingDays=20

for((day=1;day<$workingDays;day++))
do
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
	salary=$(($empHr*$empRatePerHr))
	tottalSalary=$(($tottalSalary+$salary))
done
