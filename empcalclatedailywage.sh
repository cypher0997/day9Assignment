#!/bin/bash -x
isPresent=1
randomCheck=$(($RANDOM%2))

if [ $isPresent -eq $randomCheck ]
then
   empRatePerHr=20
	empHr=8
	salary=$(($empHr*$empRatePerHr))
else
   salary=0
fi
