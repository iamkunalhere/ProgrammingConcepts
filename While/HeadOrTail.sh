#!/bin/bash -x
HeadCount=0
TailCount=0
while [[ $HeadCount -ne 11 && $TailCount -ne 11 ]]
do
	state=$((RANDOM%2))
        if [[ $state -eq 1 ]]
        then
                ((HeadCount++))
        else
                ((TailCount++))
        fi
done
if [[ $HeadCount -eq 11 ]]
then
	echo Head Wins $HeadCount times
else
	echo Tail Wins $TailCount times
fi

