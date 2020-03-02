#!/bin/bash -x
stakes=100
goal=200
win=0
checker=0
while [[ $stakes -gt 0 && $stakes -le $goal ]]
do	
	((checker++))
	random=$((RANDOM%2))
	if [[ $random -eq 0 ]]
	then
		((win++))
		((stakes++))
	else
		((stakes--))
	fi
done
echo $win  wins
echo $checker plays
echo $stakes stakes
