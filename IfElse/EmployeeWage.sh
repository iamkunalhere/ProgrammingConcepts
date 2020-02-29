state=$((RANDOM%2))

if [ $state == 1 ]
then
        EmpRatePerHour=30
	WorkingHours=10
	Salary=$(($EmpRatePerHour * $WorkingHours))
	echo $Salary
else
       echo $Salary
fi

