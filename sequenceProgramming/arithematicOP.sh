#!/bin/bash -x

a=10
b=20
c=30

declare -a res

res[0]=$((a + b * c))
res[1]=$((a + a / b))
res[2]=$((a % b + c))
res[3]=$((a * b + c))
max=${res[0]}
min=${res[0]}
length=${#res[@]}
#finding maximum value

for ((i=1; i<${length};i++))
do 
		if [ $max -lt ${res[i]} ]
		then
				max=${res[i]}
		fi
		if [ $min -gt ${res[i]} ]
		then
				min=${res[i]}
		fi
done

echo $max
echo $min
