#!/bin/bash -x

function random() {
    z=$((RANDOM%12+1))
}
people=0
declare -A month
month=( ["jan"]=0 ["feb"]=0 ["mar"]=0 ["apr"]=0 ["may"]=0 ["jun"]=0 ["jul"]=0 ["aug"]=0 ["sep"]=0 ["oct"]=0 ["nov"]=0 ["dec"]=0 )
while [[ $people -ne 50 ]]
do
	((people++))
	random
	case $z in
		"1")
		month[jan]=$((${month["jan"]}+1))
		;;
		"2")
      month[feb]=$((${month["feb"]}+1))
      ;;
		"3")
      month[mar]=$((${month["mar"]}+1))
      ;;
		"4")
      month[apr]=$((${month["apr"]}+1))
      ;;
		"5")
      month[may]=$((${month["may"]}+1))
      ;;
		"6")
      month[jun]=$((${month["jun"]}+1))
      ;;
		"7")
      month[jul]=$((${month["jul"]}+1))
      ;;
		"8")
      month[aug]=$((${month["aug"]}+1))
      ;;
		"9")
      month[sep]=$((${month["sep"]}+1))
      ;;
		"10")
      month[oct]=$((${month["oct"]}+1))
      ;;
		"11")
      month[nov]=$((${month["nov"]}+1))
      ;;
		"12")
      month[dec]=$((${month["dec"]}+1))
      ;;
	esac
done
echo ${month[@]}
echo ${!month[@]}
