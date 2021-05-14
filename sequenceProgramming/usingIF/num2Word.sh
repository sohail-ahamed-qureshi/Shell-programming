#!/bin/bash -x

echo "Enter a Number from 0-9:"
read num

if [ $num -ge 0 ] && [ $num -le 9 ]
then
	if [ $num -eq 0 ]
	then 
			echo "Zero"
	elif [ $num -eq 1 ]
	then
			echo "one"
	elif [ $num -eq 2 ]
	then	
		echo "Two"
	elif [ $num -eq 3 ]
	then
		echo "Three"
	elif [ $num -eq 4 ]
	then 
		echo "four"
	elif [ $num -eq 5 ]
	then	
		echo "Five"
	elif [ $num -eq 6 ]
	then 
		echo "Six"
	elif [ $num -eq 7 ]
	then
		echo "Seven"
	elif [ $num -eq 8 ]
	then
		echo "Eight"
	else
		echo "Nine"
	
	fi
else
	echo "invalid number"
	echo "enter a valid number from 0-9:"
	read num
fi
