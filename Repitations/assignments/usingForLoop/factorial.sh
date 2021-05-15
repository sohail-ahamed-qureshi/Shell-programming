#!/bin/bash -x

echo "Enter the range: "
read num
fact=1
for ((i=1; i<=num; i++))
do
	fact=$((fact*i))
	echo $fact
done
