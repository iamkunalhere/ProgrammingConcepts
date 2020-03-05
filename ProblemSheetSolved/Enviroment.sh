#!/bin/bash -x

var=`echo usersecret=$usersecret`
if [ $var == `env | grep usersecret | awk '{print $0}'` ]
then
	echo already present
else
	export usersecret="dH34xJaa23"
fi

