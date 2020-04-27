#!/bin/bash 

read -p "Enter the number" num1


for ((n=1; n<num1; n++))
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
		if(($(($num1%n==0))))
		then
			echo $n
		else
			continue
		fi
	fi
done
