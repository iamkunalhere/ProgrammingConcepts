#!/bin/bash -x
EmpRatePerHour=30
TotalWorkingDays=20
MaxHoursInMonth=100
hours=0
days=0
while [[ days -lt TotalWorkingDays && hours -le MaxHoursInMonth ]]
do
	((days++))
	state=$((RANDOM%3))
	case $state in
		"1")
		EmpHours=8
		;;
		"2")
		EmpHours=4
		;;
		*)
		EmpHours=0
		;;
	esac
	salary=$(($salary+$EmpHours*$EmpRatePerHour))
done
echo "$salary is salary of employee in a month"
