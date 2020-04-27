#!/bin/bash 

start=100
win=0
lost=0


amount=100

while [ $amount -gt 0 ] && [ $amount -lt 200 ]
do
	dec=$(($RANDOM%2 + 1))
	echo "bets placed : 1"
	if(($dec==1))
	then	
		win=$(($win+1))
		amount=$(($amount+1))
		echo "Gambler won 1"
	else	
		lost=$(($lost+1))
		amount=$(($amount-1))
		echo "Gambler lost 1"
	fi
	echo "amount is $amount"
done

if(($amount==0))
then
	echo "Gambler won $win times"
	echo "Gambler lost $lost times"
	echo "Gambler went broke"
else
	echo "Gambler won $win times"
	echo "Gambler lost $lost times"
	echo "Gambler reached his goal"
fi
