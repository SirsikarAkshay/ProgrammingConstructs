#!/bin/bash
declare -A Dice

one=0
two=0
three=0
four=0
five=0
six=0

while [ $one -lt 10 ] && [ $two -lt 10 ] && [ $three -lt 10 ] && [ $four -lt 10 ] && [ $five -lt 10 ] && [ $six -lt 10 ]
do
	diceRoll=$(($RANDOM%6 + 1))
	
	if(($diceRoll==1))
	then
		one=$(($one+1))
	elif(($diceRoll==2))
	then
		two=$(($two+1))
	elif(($diceRoll==3))
	then
		three=$(($three+1))
	elif(($diceRoll==4))
	then
		four=$(($four+1))
	elif(($diceRoll==5))
	then
		five=$(($five+1))
	else
		six=$(($six+1))
	fi
done

Dice[ones]=$one
Dice[twos]=$two
Dice[threes]=$three
Dice[fours]=$four
Dice[fives]=$five
Dice[sixes]=$six

max=${Dice[ones]}
min=${Dice[twos]}

for i in "${Dice[@]}"
do
	(( i > max )) && max=$i
	(( i < min )) && min=$i
done

for j in "${!Dice[@]}"
do
	if [ ${Dice[$j]} -eq $min ]
	then
		echo "minimum $j, $min"
	elif [ ${Dice[$j]} -eq $max ]
	then
		echo "maximum $j, $max"

	fi	
done

