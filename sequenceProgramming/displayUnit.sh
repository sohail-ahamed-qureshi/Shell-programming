#!/bin/bash -x

declare -a display_array=( "ones" "tens" "hundreds" "thousands" "ten thousands" "Lacs" "Ten Lacs" )

echo "Enter the number"
read num

if [ $num -eq 1 ]
then
	echo ${display_array[0]}
elif [ $num -eq 10 ]
then
	echo ${display_array[1]}
elif [ $num -eq 100 ]
then 
		echo ${display_array[2]} 
else
	echo "invalid number"
fi


