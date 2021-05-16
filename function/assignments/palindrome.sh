#!/bin/bash -x

#palindrome   12321

function reverse(){
		local num=$1
		revNumber=0
		while [ $num -ne 0 ]
		do
			lastDigit=$(($num%10))
			revNumber=$(( ($revNumber*10)+ $lastDigit ))
			num=$(($num/10))
		done
echo $revNumber
}

echo "enter a number to check palindrome: "
read num

origNum=$num

revNum=$(reverse $num)

if [[ $origNum -eq $revNum ]]
then
		echo  $origNum " is a palindrome"
else

		echo $origNum "is not a palindrome"
fi


