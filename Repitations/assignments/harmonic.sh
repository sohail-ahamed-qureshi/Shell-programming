#!/bin/bash -x

num=$1
harmonic=1
for ((i=1;i<=num; i++))
do
		harmonic=$(($harmonic+1/i))
		echo $harmonic
done

