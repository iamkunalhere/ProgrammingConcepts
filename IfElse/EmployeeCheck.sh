state=$((RANDOM%2))

if [ $state == 1 ]
then
	echo employee is present
else
	echo employee is absent
fi
