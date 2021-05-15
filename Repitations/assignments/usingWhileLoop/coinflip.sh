#!/bin/bash 


counter=0
while [[ counter -le 10 ]]
do
	coin=$((RANDOM%2))
	if [ $coin -eq 1 ]
	then 
			echo "Heads"
			counter=$(($counter + 1))
	else
			echo "Tails"
	fi

done


	
