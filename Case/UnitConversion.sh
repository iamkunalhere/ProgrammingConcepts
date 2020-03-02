#!/bin/bash -x
echo "1 Feet to Inch"
echo "2 Feet to Meter"
echo "3 Inch to Feet"
echo "4 Meter to Feet"
read -p "Enter your choice : " choice

case $choice in

	"1")
	read -p "Enter feet distance" feet
	Inch=`expr "(($feet*12))" | bc -l`
	echo $feet feet is equals to $Inch Inch
	;;

	"2")
	read -p "Enter feet distance" feet
	Meter=`expr "(($feet/3.2808))" | bc -l`
	echo $feet feet is equals to $Meter meter
	;;

	"3")
	read -p "Enter inch distance" inch
	feet=`expr "(($inch/12))" | bc -l`
	echo $inch inch is equals to $feet feet
	;;

	"4")
	read -p "Enter meter distance" meter
	feet=`expr "(($meter*3.2808))" | bc -l`
	echo $meter meter is equals to $feet feet
	;;
esac

