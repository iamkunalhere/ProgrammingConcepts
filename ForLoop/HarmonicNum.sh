#!/bin/bash -x
number=$1
harmonic=0
for ((a=1; a<=$number; a++))
do
	frac=`expr "1/$a" | bc -l`
	harmonic=`expr "$harmonic+$frac" | bc -l` 
done
echo $harmonic is Harmonic number of given number

