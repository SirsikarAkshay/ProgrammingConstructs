#!/bin/bash 

read -p "Enter the beginning number" num1
read -p "Enter the end number" num2

for ((n=num1; n<=num2; n++))
do

	sq=$(echo "scale=2;sqrt($n)" | bc)
	sqr=${sq%.*}
	flag=0

	for (( count=2; count<=sqr ; count++ ))
	do
		res=$(($n%$count))
		if(($res==0))
		then
			flag=1
		else
			flag=0
		fi
	done

	if((flag==0))
	then
		echo "$n is a prime number"
	else
		echo "$n is not a prime number"
	fi
done
