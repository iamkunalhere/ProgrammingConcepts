state=$((RANDOM%2))

if [[ $state -eq 0 ]]
then
	echo Tail
else
	echo Head
fi
