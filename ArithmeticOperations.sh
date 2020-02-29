#!bin/bash -x
read -p "Enter first value: " a
read -p "Enter second value: " b
read -p "Enter third value: " c
Operation1=$(($a + $b * $c))
Operation2=$(($a % $b + $c)) 
Operation3=$(($c + $a / $b))
Operation4=$(($a * $b + $c))
echo $Operation1
echo $Operation2
echo $Operation3
echo $Operation4
