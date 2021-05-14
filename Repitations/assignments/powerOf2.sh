#!/bin/bash -x


num=$1
power=2
for ((i=1; i<=num; i++))
do 
		power=$(($power*2))
		echo $power

done
