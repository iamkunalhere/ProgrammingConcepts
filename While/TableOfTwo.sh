#!/bin/bash -x
num=$1
i=1
while [[ $Power -le 256 && $i -le $num ]]
do
	Power=`expr "((2^$i))" | bc -l`
	echo "2 ^ $i = $Power"
	((i++))
done

