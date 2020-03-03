#!/bin/bash -x
function getEmphoursFun() {
        case $1 in
                "1")
                EmpHours=8
                ;;
                "2")
                EmpHours=4
                ;;
                *)
                EmpHours=0
                ;;
        esac
        echo $EmpHours
}

function calcDailyWage() {
	local workHours=$1
	wage=$(($workHours*$EmpRatePerHour))
	echo $wage
}

EmpRatePerHour=30
TotalWorkingDays=20
MaxHoursInMonth=100
hours=0
days=0
while [[ days -lt TotalWorkingDays && hours -le MaxHoursInMonth ]]
do
        ((days++))
        EmpHours="$(getEmphoursFun $((RANDOM%3)) )"
        totalWorkHours=$(($totalWorkHours+$EmpHours))
	EmpDailyWage[$days]="$(calcDailyWage $EmpHours)"

done
salary="$(calcDailyWage $totalWorkHours)"
echo "daily wage" ${EmpDailyWage[@]}
