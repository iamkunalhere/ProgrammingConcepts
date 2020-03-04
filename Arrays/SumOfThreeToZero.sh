#!/bin/bash -x
counter=0
for ((i=0; i<10; i++))
do
	numbers[((counter++))]=$((RANDOM%20-10))
done
echo ${numbers[@]}
for ((j=0; k<10; j++))
do
	for((k=1; k<10; k++))
	do
		for((l=2; l<10; l++))
		do
			if [[ $((${numbers[$j]} + ${numbers[$k]} + ${numbers[$l]})) -eq 0 ]]
			then
					echo "${numbers[$j]} + ${numbers[$k]} + ${numbers[$l]} = 0"
			fi
		done
	done
done
