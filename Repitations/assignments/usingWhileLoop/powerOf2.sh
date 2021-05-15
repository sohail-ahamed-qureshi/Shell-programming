#!/bin/bash 


num=$1
power=2
i=1
while [[ $i -le $num ]]
do 
		power=$(($power*2))
		$((i++))
		echo $power
done
		
