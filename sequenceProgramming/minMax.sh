#!/bin/bash -x


declare -a array

for ((i=0;i<5;i++))
do
	rand=$((100 + RANDOM % 899))
	array[i]=$rand
	echo ${array[i]}
done
#finding the max value
length=${#array[@]}

max=${array[0]}
min=${array[0]}
for((i=1;i<${length};i++))
do
	if [ $max -lt ${array[i]} ]
	then
		max=${array[i]}
	elif [ $min -gt ${array[i]} ]
	then
		min=${array[i]}
	fi
done
echo maximum value is $max
echo minimun value is $min

