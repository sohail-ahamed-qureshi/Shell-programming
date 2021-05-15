#!/bin/bash 

echo "enter the range:"
read num

if [ $num -le 1 ]
then
	echo "invalid number"
else

	for ((i=1; i<=num; i++))
	do
		counter=0
		for ((j=i; j>=1; j--))
		do
			if [ $((i%j)) -eq 0 ]
			then
				counter=$(( $counter + 1 ))
			fi
		done

			if [ $counter -eq 2 ]
			then
				echo $i 
			fi
	done
fi
