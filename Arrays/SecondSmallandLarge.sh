#!/bin/bash -x

for (( i=0; i<10; i++ ))
do
	randomNumbers[(($i))]=$((RANDOM%900+100))
done
echo ${randomNumbers[@]}
largest=${randomNumbers[0]}
secondLarge=${randomNumbers[0]}

for((i=0; i<10; i++))
do
	if [[ ${randomNumbers[$i]} -ge $largest ]]
	then
		secondLarge=$largest
		largest=${randomNumbers[$i]}
	fi
done
echo "$secondLarge is Second Large in array"
smallest=${randomNumbers[0]}
secondSmall=${randomNumbers[0]}
for((j=0; j<10; j++))
do
	if [[ ${randomNumbers[$j]} -le $smallest ]]
	then
		secondSmall=$smallest
		smallest=${randomNumbers[$j]}
	fi
done
echo "$secondSmall is second small in array"
