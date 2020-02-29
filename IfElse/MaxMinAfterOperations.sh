#!bin/bash -x
read -p "Enter first value: " a
read -p "Enter second value: " b
read -p "Enter third value: " c
num1=$(($a + $b * $c))
num2=$(($a % $b + $c)) 
num3=$(($c + $a / $b))
num4=$(($a * $b + $c))
echo Result of first Operation$num1
echo Result of second Operation$num2
echo Result of third Operation$num3
echo Result of fourth Operation$num4

if [[ $num1 > $num2 && $num1 > $num3 && $num1 > $num4  ]]
then
        echo The max number is $num1
elif [[ $num2 > $num1 && $num2 > $num3 && $num2 > $num4 ]]
then
        echo The max number is $num2
elif [[ $num3 > $num1 && $num3 > $num2 && $num3 > $num4 ]]
then
        echo The max number is $num3
else
        echo The max number is $num4
fi

if [[ $num1 < $num2 && $num1 < $num3 && $num1 < $num4 ]]
then
        echo The min number is $num1
elif [[ $num2 < $num1 && $num2 < $num3 && $num2 < $num4 ]]
then
        echo The min number is $num2
elif [[ $num3 < $num1 && $num3 < $num2 && $num3 < $num4 ]]
then
        echo The min number is $num3
else
        echo The min number is $num4
fi

