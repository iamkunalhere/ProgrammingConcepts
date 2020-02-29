month=$1
date=$2
year=$3

#Using Gregorian calendar
year2=$((year-(14-month)/12))
x=$((year2 + year2/4 - year2/100 + year2/400 ))
month2=$(( month + 12 * ((14 - month) / 12) - 2 ))
day=$(((date + x + 31 * month2 / 12) % 7))

if(($day == 0))
then
	echo sunday
elif (($day == 1))
then 
	echo monday
elif (($day == 2))
then 
        echo tuesday
elif (($day == 3))
then 
        echo wednesday
elif (($day == 4))
then 
        echo thursday
elif (($day == 5))
then 
        echo friday
elif (($day == 6))
then 
        echo saturday
fi
