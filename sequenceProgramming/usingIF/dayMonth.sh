#!/bin/bash -x

echo "enter day(from 1 to 31):"
read day

#validating day
while [ $day -le 0 ] || [ $day -ge 32 ]
do
	echo "enter a valid day:"
	read day
done

echo "enter month(from 1 to 12):"
read month

#validating month
while [ $month -le 0 ] || [ $month -ge 13 ]
do
	echo "enter a valid month:"
	read month
done

#checking day of month is from March 20 to June 20

if [ $month -eq 3 ] && [ $day -ge 20 ]
then
	echo "true"
elif [ $month -eq 6 ] && [ $day -le 20 ]
then
	echo "true"
elif [ $month -gt 3 ] && [ $month -lt 6 ] 
then 	
	echo "true"
else
	echo "false"
fi

 





