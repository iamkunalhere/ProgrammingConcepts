#!bin/bash -x
read -p "Enter first value: " a
read -p "Enter second value: " b
read -p "Enter third value: " c
Operation1=$(($a + $b * $c))
Operation2=$(($a % $b + $c)) 
Operation3=$(($c + $a / $b))
Operation4=$(($a * $b + $c))
echo Result of first Operation$Operation1
echo Result of second Operation$Operation2
echo Result of third Operation$Operation3
echo Result of fourth Operation$Operation4
