#!/bin/bash -x

declare -a arr=(12 11 33 21 45 76 99 55 02 66)
declare -a array
echo ${arr[@]}
length=${#arr[@]}
for ((i=0; i<length; i++))
do
	if [ $((${arr[i]}%11)) == 0  ]
	then
			array[i]=${arr[i]}
	fi
done
echo ${array[@]}

