#!/bin/bash -x

state=$((RANDOM%3))
EmpRatePerHour=30
if [[ $state -eq 1 ]]
then
	EmpHours=10
elif [[ $state -eq 2 ]]
then
	EmpHours=5
else
	EmpHours=0
fi
salary=$((EmpHours * EmpRatePerHour))
echo "salary of employee: "$salary
