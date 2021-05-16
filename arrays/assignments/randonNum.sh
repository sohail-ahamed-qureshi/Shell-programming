#!/bin/bash -x 

declare -a ar r
for ((i=0; i<10; i++))
	do 
		num=$((100 + RANDOM%899))
		arr[i]=$(($num))
	done

echo  "array is: " ${arr[@]}

#find first largest and smallest num in an array
large=${arr[0]}
small=${arr[0]}
length=${#arr[@]}

for ((i=1; i<${length}; i++))
do
		if [ $large -lt ${arr[i]}  ]
		then
				largeIndex=$i
				large=${arr[i]}

		elif [ $small -gt ${arr[i]} ]
		then
				smallIndex=$i
				small=${arr[i]}
		fi
done

#find Second largest and smallest number in an array
secLarge=${arr[0]}
secSmall=${arr[0]}

for ((i=0; i<${length}; i++))
do
		if [ $i -eq $largeIndex ]
		then
				i=$i+1
		fi

		if [ $secLarge -lt ${arr[i]} ]
		then
				secLarge=${arr[i]}
				secLargeIndex=$i
		fi

done


for ((i=0; i<${length}; i++))
do

		if [ $i -eq $smallIndex ]
		then
				i=$i+1
		fi

		if [ $secSmall -gt ${arr[i]} ]
		then
				secSmall=${arr[i]}
				secSmallIndex=$i
		fi

done




echo "first largeest number: " $largeIndex $large
echo "second largest Number: " $secLargeIndex $secLarge
echo "first smallest number: " $smallIndex $small
echo "second smallest number: " $secSmallIndex $secSmall
