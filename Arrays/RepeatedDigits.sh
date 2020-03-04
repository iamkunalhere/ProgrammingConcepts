#!/bin/bash -x

function palindrome() {
	num=$1
	sum=0
	while [[ $num -ne 0 ]]
	do
		r=$(($num%10))
		sum=$(($sum*10+$r))
		num=$(($num/10))
	done
	echo $sum
}


counter=0
for((i=0; i<=100; i++))
do
	if [[ $i -eq $( palindrome $i ) ]]
	then
		if [[ ${#i} -eq 2 ]]
		then
			numbers[((counter++))]=$i
		fi
	fi
done
echo ${numbers[@]}
