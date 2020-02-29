#!/bin/bash -x

read -p "Enter the Year: " year

if [[ $year%4 -eq 0 && $year%100 -ne 0 || $year%400 -eq 0 ]]
then
	echo It is a Leap Year

else
	echo It is not Leap Year
fi
