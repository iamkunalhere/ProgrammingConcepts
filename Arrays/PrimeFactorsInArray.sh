#!/bin/bash -x


function isPrime() {
        num=$1
        count=0
        for (( i=2; i<$num; i++ ))
        do
                if [[ $num%$i -eq 0 ]]
                then
                        ((count++))
                fi
        done
        if [[ $count -eq 0 ]]
        then
                echo $1
        fi
}


read -p "Enter the number: " num
k=0
for ((i=1; i<num; i++))
do
        if [[ $(($num%$i)) == 0 ]]
        then
					numbers[((k++))]=$( isPrime $i )
		  fi

done

echo ${numbers[@]}

