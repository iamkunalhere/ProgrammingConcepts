#!/bin/bash -x

function isPrime() {
	for (( i=2; i<$num; i++ ))
	do
		if [[ $num%$i -eq 0 ]]
		then
			((count++))
		fi
	done
	if [[ $count -eq 0 ]]
	then
		echo prime
	else
		echo notPrime
}
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

