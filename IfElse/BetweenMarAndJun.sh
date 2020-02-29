day=$1
month=$2

if [[ $month == 3 ]]
then
	if [ $day >= 20 ]
	then
		echo True
	fi

elif [[ $month == 4 || $month == 5 ]]
then
	echo True
elif [[ $month == 6 ]]
then
	if [ $day <= 20 ]
	then
		echo True
	fi
else
	echo False

fi


