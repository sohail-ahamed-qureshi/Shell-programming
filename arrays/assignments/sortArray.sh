#!/bin/bash -x

declare -a arr

for ((i=0; i<10; i++))
do
	arr[i]=$((RANDOM%99))

done
echo "unsorted array: " "${arr[@]}"

#sorting an array

length=${#arr[@]}
for ((i=0; i<${length}; i++))
do
	for ((j=$i+1;j<${length}; j++))
	do
		temp=0
		if [ ${arr[i]} -gt ${arr[j]} ]
		then
				temp=${arr[i]}
				arr[i]=${arr[j]}
				arr[j]=$(($temp))
		fi
	done
done

echo "sorted array: " "${arr[@]}"

#find first largest and smallest num in an array
large=${arr[0]}
small=${arr[0]}


for ((i=1; i<${length}; i++))
do
 	if [ $large -lt ${arr[i]}  ]
   then
     largeIndex=$i
        large=${arr[i]}

	elif [ $small -gt ${arr[i]} ]
   then
	    smallind=$i
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
   if [ $i -eq $smallind ]
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
