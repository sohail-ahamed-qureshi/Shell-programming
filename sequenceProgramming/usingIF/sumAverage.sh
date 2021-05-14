#!/bin/bash -x

sum=0
for num in {1..5}
do 
	randNum=$((10 + RANDOM % 89))
	sum=$(($sum + $randNum))
done
	avg=$(($sum/5))
	echo sum is $sum
	echo average is $avg
