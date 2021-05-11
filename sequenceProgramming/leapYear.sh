#!/bin/bash -x

echo "Enter year (from 1000 to 9999):"
read year

while [ $year -lt 1000 ] || [ $year -gt 10000 ]
do
	echo "invalid year"
	echo "Enter year"
	read year
done

if [ $year%400==0 ]
then
	echo $year" is leap year"
	if [ $year%100==0 ]
	then
	echo $year" is not a leap year"
elif [ $year%4==0 ]
then
	echo $year "is a leap year"
fi
	

  
