#!/bin/bash -x

echo "Enter the number from 0-5"
read num

case $num in
	1)
		echo "One"
	;;
	2)
		echo "two"
	;;
	3)
		echo "three"
	;;
	4)
		echo "four"
	;;
	5)
		echo "five"
	;;
	*)
		echo "invalid number"
	;;
esac
