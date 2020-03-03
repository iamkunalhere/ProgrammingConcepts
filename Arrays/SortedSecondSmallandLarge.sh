#!/bin/bash -x

for (( i=0; i<10; i++ ))
do
        randomNumbers[(($i))]=$((RANDOM%900+100))
done
echo ${randomNumbers[@]}

for ((k=0; k<10; k++ ))
do
	temp=0
	for ((l=0; l<10; l++))
	do
		if [[ ${randomNumbers[$l]} -gt ${randomNumbers[$k]} ]]
		then
				temp=${randomNumbers[$k]}
				randomNumbers[$k]=${randomNumbers[$l]}
				randomNumbers[$l]=$temp
		fi
	done
done
echo "${randomNumbers[8]} is second largest in array" 
echo "${randomNumbers[1]} is second small in array"


