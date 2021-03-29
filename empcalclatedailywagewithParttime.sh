#!/bin/bash -x
isParttime=1
isFulltime=2
empRatePerHr=20
randomCheck=$(($RANDOM%3))

if [ $isFulltime -eq $randomCheck ]
then
   empHr=8
elif [ $isParttime -eq $randomCheck ]
then
	empHr=4
else
   empHr=0
fi
salary=$(($empHr*$empRatePerHr))
