#!/bin/bash -x

function prime(){
		local input=$1
		if [ $input -le 1 ]
		then 
			echo 0
		else
			for ((i=2; i<=input/2; i++))
			do
				if [ $(($input%i)) == 0 ]
				then
					echo 0
					exit
				fi
			done
			echo 1
		fi
}

function palindrome(){
		local number=$1
		origNum=$(($number))
		revNumber=0
		while [ $number -ne 0 ]
		do
			lastdigit=$(($number%10))
			revNumber=$(( ($revNumber*10) + $lastdigit))
			number=$(($number/10))
		done

		if [[ $origNum -eq $revNumber ]]
		then
			echo 1
		else
			echo 0
		fi

	}

function selection(){
		local number=$1
		echo "press 1 to check for prime: "
		echo "press 2 to check for palindrome: "
		echo "press 3 to check both Palindrome and prime: "
		read num
		echo $num
}
echo "Enter a number: "
read input
inputNumber=$(($input))

echo "press 1 to check for prime: "
		echo "press 2 to check for palindrome: "
		echo "press 3 to check both Palindrome and prime: "
		read num

#selNum=$(selection $input)

case $num in
	1)
		#check for prime only
		output="$(prime $input)"
		if [ $(($output)) == 0 ]
			then
				echo "number is not a prime"
		else
			echo "number is prime"
		fi


	;;
	2)
		#check for palindrome only
		output="$(palindrome $input)"
			if [ $(($output)) == 0 ]
			then
				echo "number is not a palindrome"
			else
				echo "number is a palindrome"
			fi
	;;
	3)
		echo $inputNumber
		#check for both palindrome and prime
		output="$(palindrome $input)"
			if [ $(($output)) == 1 ]
			then
				primeOut="$(prime $inputNumber)"
					if [ $(($primeOut)) == 1 ]
					then
						echo "number is Palindrome and Prime."
						exit
					else
						echo "number is Palindrome but not Prime."
						exit
					fi
			else
					pOut="$(prime $inputNumber)"
						if [ $(($pOut)) == 0 ] 
						then
							echo "number is neither Palindrome nor Prime."
							exit
						else
							echo "number is not Palindrome but it is Prime."
							exit
						fi
			fi
	;;
	*)
		echo "invalid input please try again"
	;;


esac
