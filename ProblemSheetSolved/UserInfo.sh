#!/bin/bash -x

k=1
awk -F : '{if($3 > 100) print $6}' /etc/passwd > HomeDir
for path in 'cat HomeDir'
do
	UserPath=`awk 'NR == $k++ {print $0}' /etc/passwd` 

	chown -R admin1 $UserPath 

done

awk -F : '{if ($3 > 999) print $1,$6}' /etc/passwd 
