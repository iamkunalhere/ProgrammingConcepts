#!/bin/bash -x

function calculation() {
	case $1 in
		"1")
		read -p  "Enter deg in F: " degF
		if [[ $degF -ge 32 && $degF -le 212  ]]
		then
			degC=`expr "scale=2;($degF-32)*5/9" | bc -l`
			echo $degC
		else
			echo "Input is not in range"
		fi
		;;

		"2")
		read -p  "Enter deg in C: " degC
		if [[ $degC -ge 0 && $degC -le 100 ]]
                then
			degF=`expr "scale=2;($degC*9/5)+32" | bc -l`
                	echo $degF
		else
			echo "Input is not in range"
		fi
		;;
	esac
}
choice=0
while [[ $choice -ne 3 ]]
do
	echo "1:degF to degC"
	echo "2:degC to degF"
	echo "3:Exit"
	read -p "Enter Your choice " choice
	var=$choice
	temperature=$( calculation $var )
	echo $temperature
done
