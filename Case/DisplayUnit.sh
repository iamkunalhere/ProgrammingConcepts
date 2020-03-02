#!/bin/bash -x
read -p "enter the number: " num
case $num in

        "1")
        echo one 
        ;;
        "10")
        echo ten 
        ;;
        "100")
        echo hundred
        ;;
        "1000")
        echo thousand 
        ;;
        "10000")
        echo ten thousand 
        ;;
        "100000")
        echo lakh
        ;;
        "1000000")
        echo million 
        ;;
        "10000000")
        echo crore 
        ;;
	*)
	echo Wrong input
	;;
esac
