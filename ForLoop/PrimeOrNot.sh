#!/bin/bash -x

read -p "enter the number: " num
count=0
for (( a=2 ; a<$num; a++ ))
do
	if [[ $(($num%$a)) == 0 ]]
	then
		count=$(($count+1))
	fi
done

if [[ $count == 0 ]]
then
	echo number is prime
else
	echo number is not prime
fi

