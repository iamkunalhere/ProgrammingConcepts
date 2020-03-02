#!/bin/bash -x
number=$1

for (( a=1; a<=number; a++ ))
do
	var=`expr "((2^$a))" | bc -l` 
	echo "2^$a = $var"
done

