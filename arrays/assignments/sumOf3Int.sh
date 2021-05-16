#!/bin/bash 

#sum of three
# 1 + (-1) + 0 = 0
# 20 + -15 + -5 = 0

declare -a array=(0 1 -1 2 3 4 5 -5)
echo ${array[@]}
length=${#array[@]}
for ((i=0; i<${length}; i++))
do
		for((j=$i+1; j<${length}; j++))
		do
			for((k=j+1; k<${length}; k++))
			do
				if [ $((${array[i]}+${array[j]}+${array[k]})) == 0 ]
				then
					echo ${array[i]} "+" ${array[j]} "+" ${array[k]} "= 0" 
				fi
			done
		done
done

