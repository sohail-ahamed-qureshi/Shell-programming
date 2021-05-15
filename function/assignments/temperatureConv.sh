#!/bin/bash 

function farheneit(){
			local degC=$1
			 degF=$((($degC*9/5)+32))
				return $degF
}


function celisus(){
			local degF=$1
			 degC=$((($degF-32)*5/9))
				return degC
}

echo "Select the Operation: "
echo "1. Farheneit to Celisus"
echo "2. Celisus to Farheneit"
read option
case $option in
		1)
			echo "Enter the Degree in Farhaneit from (32F to 212F):"
				read degF
					while [ $degF -lt 32 ] || [ $degF -gt 212 ]
						do
							echo "Invalid data please enter again: "
							read degF
						done
				celisus $degF
				echo $degF "Farheneit is equal to "$degC "Celisus"
				
		;;
		2)
			echo "Enter the Degree in Celisus from (0C to 100C): "
			read degC
					while [ $degC -lt 0 ] || [ $degC -gt 100 ]
					do
						echo "invalid data please enter again: "
						read degC
					done
				farheneit $degC
				echo  $degC"Celisus is equal to "$degF"Farheneit"
		;;
		*)
			echo "invalid option selected"
		;;
esac
