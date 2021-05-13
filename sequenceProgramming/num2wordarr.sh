#!/bin/bash -x

declare -a number_array=( "zero" "one" "two" "three" "four" "five" "six" "seven" "eight" "nine" )

echo "Enter a number from 0-9: "
read num

if [ $num -ge 0 ] && [ $num -le 9 ]
then
	echo ${number_array[$num]}
else
	echo "invalid number"
fi

