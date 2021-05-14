#!/bin/bash -x

rand1=$((1 + RANDOM % 6))
rand2=$((1 + RANDOM % 6))
dice=$(($rand1+$rand2))
echo $dice

