#!/bin/bash -x

read -p "Enter the number: " num
count=0
for ((i=1; i<num; i++))
do
	if [[ $(($num%$i)) == 0 ]]
	then

		for (( j=2; j<i; j++))
		do
			if [[ $(($i%$j)) == 0 ]]
			then
				count=$(($count+1))
			fi
		done
		if [[ $count == 0 ]]
		then
			echo  $i
		fi
	fi
	count=0
done
