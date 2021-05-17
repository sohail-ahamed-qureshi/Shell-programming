#!/bin/bash 

declare -a arr

declare -A array
array[one]=0
array[two]=0
array[three]=0
array[four]=0
array[five]=0
array[six]=0

length=${#array[@]}

function roll(){
	for ((i=0; i<100; i++))
	do
			dice=$((1+RANDOM%6))
			arr[i]=$dice
		if [ $dice -eq 1 ] 
		then
				if [ ${array[one]} -ne 11 ]
				then
					array[one]=$((${array[one]}+1))
				else
					echo "number 1: " ${array[one]}
					echo ${arr[@]}
					exit
				fi
		elif [ $dice -eq 2 ]
		then
				if [ ${array[two]} -ne 11 ]
				then
					array[two]=$((${array[two]}+1))
				else
					echo  "number 2:" ${array[two]}
					echo ${arr[@]}
					exit
				fi

		elif [ $dice -eq 3 ]
		then
				if [ ${array[three]} -ne 11 ]
				then
					array[three]=$((${array[three]}+1))
				else
					echo  "number 3:" ${array[three]}
					echo ${arr[@]}
					exit
				fi
		elif [ $dice -eq 4 ]
		then
				if [ ${array[four]} -ne 11 ]
				then
					array[four]=$((${array[four]}+1))
				else
					echo  "number 4:" ${array[four]}
					echo ${arr[@]}
					exit
				fi
		elif [ $dice -eq 5 ]
		then
				if [ ${array[five]} -ne 11 ]
				then
					array[five]=$((${array[five]}+1))
				else
					echo  "number 5:" ${array[five]}
					echo ${arr[@]}
					exit
				fi
		elif [ $dice -eq 6 ]
		then
				if [ ${array[six]} -ne 11 ]
				then
					array[six]=$((${array[six]}+1))
				else
					echo  "number 6:" ${array[six]}
					echo ${arr[@]}
					exit
				fi

		fi

	done

}

echo "Press R to roll a die: "
read input
case $input in
R|r)
		roll 
;;

*)
		echo "invalid key pressed"
;;
esac


