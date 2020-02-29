#!/bin/bash -x

result=`expr "42/12" | bc -l` 
echo 42 inches is equal to $result feet

echo "There are 25 plots each plot having area 60 feet * 40 feet"
#OnePlotArea=$((60*40))
area=`expr "((60*40/3.2808))" | bc -l`
areaall=`expr "(($area*25))" | bc -l`
echo area of 25 plots is $areaall
