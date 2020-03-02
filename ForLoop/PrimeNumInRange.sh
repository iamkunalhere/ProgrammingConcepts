#!/bin/bash -x

read -p "enter the starting range: " start
read -p "enter the ending range: " end
count=0
echo "Prime numbers in given range are :"
for (( a=$start ; a<=$end; a++ ))
do
	num=$a
	for ((b=2; b<=$(($num/2)); b++ ))
	do
	if [[ $(($num%$b)) == 0 ]]
        then
                count=$(($count+1))
        fi
	done


if [[ $count == 0 ]]
then
        echo $num 
fi

count=0
done

