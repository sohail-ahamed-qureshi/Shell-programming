#!/bin/bash -x

IS_FULLTIME=1
IS_PARTTIME=2
EMP_RATE_PER_HR=20

Num_Working_days=5

totalEmpHrs=0

for (( day=1; day<=$Num_Working_days; day++))
do

	empCheck=$((RANDOM%3))


if [ $empCheck -eq $IS_FULLTIME ]
then
		empHrs=8
elif [ $empCheck -eq $IS_PARTTIME ]
then
		empHrs=4
else
			empHrs=0
fi
totalEmpHrs=$(($totalEmpHrs+$empHrs))
done
wage=$(($EMP_RATE_PER_HR*$totalEmpHrs))
echo $wage

