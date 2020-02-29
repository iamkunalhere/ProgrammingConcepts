#!/bin/bash -x
read -p "Enter the Number: " num
if [[ $num -eq 1 ]]
then
        echo one
elif [[ $num -eq 10 ]]
then
        echo ten
elif [[ $num -eq 100  ]]
then
        echo hundred
elif [[ $num -eq 1000 ]]
then
        echo thousand
elif [[ $num -eq 10000 ]]
then
        echo ten thousand
elif [[ $num -eq 100000 ]]
then
        echo lakh
elif [[ $num -eq 1000000 ]]
then
        echo million
elif [[ $num -eq 10000000 ]]
then
        echo ten million
else
	echo  You entered wrong choice
fi
