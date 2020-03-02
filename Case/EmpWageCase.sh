#!/bin/bash/ -x
state=$((RANDOM%3))
EmpRatePerHour=20
case $state in

	"1")
        WorkingHours=8
	;;
	"2")
	WorkingHours=4
	;;
	*)
	WorkingHours=0
	;;

esac
	Salary=$(( $EmpRatePerHour*$WorkingHours ))
        echo $Salary



