#!/bin/bash 


gambler=100
BET=10
win=0
loss=0
while [[ $gambler -le 200 || $gambler -eq 0 ]]
do
	game=$((RANDOM%2))
		if [ $game -eq 1 ]
		then	
			gambler=$(($gambler + BET))
			win=$(($win + 1))
			echo "win!!!" 
			echo "money left:" $gambler
		else
			gambler=$((gambler - BET))
			loss=$(($loss + 1))
			echo "lost! money left: "$gambler 
		fi
done
	echo "no. of times game won: "$win
	echo "no. of times game lossed: "$loss

