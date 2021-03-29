#!/bin/bash -x
isParttime=1
isFulltime=2
empRatePerHr=20
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
