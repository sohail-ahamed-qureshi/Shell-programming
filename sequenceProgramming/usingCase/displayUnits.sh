#!/bin/bash -x

echo "Enter the number to display unit"
read num

case $num in
	1)
		echo "Ones"
	;;
	10)
		echo "Tens"
	;;
	100)
		echo "Hundreds"
	;;
	1000)
		echo "Thousands"
	;;
	10000)
		echo "Ten Thousands"
	;;
	100000)
		echo "Lakhs"
	;;
	1000000)
		echo "Ten Lakhs"
	;;
	*)
		echo "Invalid number"
	;;
esac
