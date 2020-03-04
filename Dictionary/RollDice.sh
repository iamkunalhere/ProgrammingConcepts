#!/bin/bash -x

declare -A numbers
z=0
function random() {
	 z=$((RANDOM%6+1))
}
dice1=0
dice2=0
dice3=0
dice4=0
dice5=0
dice6=0
numbers=( ["1"]=0 ["2"]=0 ["3"]=0 ["4"]=0 ["5"]=0 ["6"]=0 )
counter=0
while [[ $dice1 -lt 10 && $dice2 -lt 10 && $dice3 -lt 10 && $dice4 -lt 10 && $dice5 -lt 10 && $dice6 -lt 10 ]]
do
	random
	if [[ $z -eq 1 ]]
	then
			((dice1++))
			numbers[1]=$dice1
	elif [[ $z -eq 2 ]]
	then
			((dice2++))
			numbers[2]=$dice2
	elif [[ $z -eq 3 ]]
   then 
         ((dice3++))
         numbers[3]=$dice3
	elif [[ $z -eq 4 ]]
   then 
         ((dice4++))
         numbers[4]=$dice4
	elif [[ $z -eq 5 ]]
   then 
         ((dice5++))
         numbers[5]=$dice5
	elif [[ $z -eq 6 ]]
   then 
         ((dice6++))
         numbers[6]=$dice6
	fi
	((counter++))
done

for ((j=1; j<7; j++))
do
	if [[ ${numbers[$j]} -eq 10 ]]
	then
			maxkey=$j
			maxcount=${numbers[$j]}
	fi
done
smallest=${numbers[1]}
for ((k=1; k<7; k++))
do
	if [[ ${numbers[$k]} -lt $smallest  ]]
	then
			smallest=${numbers[$k]}
			minkey=$k
	fi
done
echo "$maxkey = $maxcount"
echo "$minkey = $smallest"
echo ${numbers[@]}
echo ${!numbers[@]}
