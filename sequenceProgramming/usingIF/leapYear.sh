#!/bin/bash -x

echo "Enter year (from 1000 to 9999):"
read year

while [ $year -lt 1000 ] || [ $year -gt 10000 ]
do
	echo "invalid year"
	echo "Enter year"
	read year
done

	if [ $year % 4 -eq 0 ] && [ $year % 100 -ne 0 ] || [ $year % 400 -eq 0 ]
	then
		echo $year" is leap year"
	else
		echo $year" is not a leap year"
	fi





