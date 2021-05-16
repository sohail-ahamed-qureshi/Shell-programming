#!/bin/bash -x

function selection(){

		local num=$1
		echo "Press 1 if your number is above " $num
		echo "Press 2 if your number is below " $num
		echo "Press 3 if your number is " $num
		read option
		return $option

}

function divide(){
	init=$1
	last=$2
	
	midNumber=$(($init+($magicNumber-$init)/2))
	return midNumber
}
i=1
n=100
magicNumber=100
echo "Select a number from 1-100: "
 divide $i $n 
	temp=$n
 selection $temp

case $temp in
	1)
		## if number is greater than midNumber
			i=$($n+1)
			divide $i


	;;
	2)
		## if number is less than midNumber

	;;
	3)
		## if the number is magicNumber
		## simply display the magic number and exit
		echo "the magic Number is: "$magicNumber
		exit
	;;
	*)
			## if invalid selection repeat asking to select number
		echo "invalid selection"
		while [ $number -lt 1 ] || [ $number -gt 3 ]
		do
			selection $magicNumber
		done
	;;


