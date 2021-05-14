#!/bin/bash -x

echo "enter the number: "
read num


if [ $num -le 1 ]
then 	
		echo "invalid number"
else
		for ((i=2; i<=num/2; i++))
		do
			if [ $((num%i)) == 0 ]
			then
				echo $num " is not a prime number"
				exit
			fi
		done
			echo  $num "is prime number"
fi
