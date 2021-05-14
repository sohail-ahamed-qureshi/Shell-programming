#!/bin/bash 

echo "Enter your choice (1-4):"

echo "1- Feet to inches"
echo "2- Feet to meters"
echo "3- Inch to feets"
echo "4- Meter to feets"
read num
case $num in
		1)
			echo "enter the number to convert in inches: "
			read feet
			inch=$(($feet*12))
			echo $inch "inch(s) is equal to" $feet "feet(s)"
		;;
		2)
			echo "enter the number to convert in meters"
			read feet
			meter=$(($feet/3.2808))
			echo  $meter "meter(s) is equal to " $feet "feets(s)"
		;;
		3)
			echo "enter the number to convert in feets: "
			read inch
			feet=$(($inch*0.08333))
			echo $feet "feet(s) is equal to " $inch "inch(s)"
		;;
		4)
			echo "enter the number to convert in feets: "
			read meter
			feet=$(($meter*3.2808))
			echo $feet "feet(s) is equal to " $meter "meter(s)"
		;;
		*)
			echo "invalid selection"
		;;
esac
