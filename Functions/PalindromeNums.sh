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
read -p "enter first number: " num1
read -p "enter second number: " num2
result="$( palindrome $num1 )"
if [[ $result -eq num2 ]]
then
	echo "numbers are palindrome"
else
	echo "numbers are not palindrome"
fi
