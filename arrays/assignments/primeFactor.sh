#!/bin/bash 

echo "Enter a number:"
read num
declare -a arr
j=0
for ((i=2; i<$num; i++))
do
	while [ $(($num % $i)) == 0 ]
	do
		
		arr[j]=$i
		j=$j+1
		num=$(($num/$i))
	done
done

if [ $num > 2 ]
then
		arr[j]=$num
fi

echo ${arr[@]}
