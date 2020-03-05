#!/bin/bash -x

echo Enter Folder name 
read foldername

for folder in `ls -F`
do 
	if [ -d $foldername ] 
	then
	echo folder already exists
	exit
	fi
done

mkdir $foldername
