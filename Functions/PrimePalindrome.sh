#!/bin/bash -x

function isPrime() {
	num=$1
	count=0
	var=prime
	for (( i=2; i<$num; i++ ))
	do
		if [[ $num%$i -eq 0 ]]
		then
			((count++))
		fi
	done
	if [[ $count -eq 0 ]]
	then
		echo $1 is prime
	else
		echo $1 is not prime
	fi
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

read -p "Enter the number: " num
isPrime $num
reverse=$(palindrome $num)
isPrime $reverse


