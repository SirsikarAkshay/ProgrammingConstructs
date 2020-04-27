#!/bin/bash 

result=1
power=1
count=1
ul=256

read -p "Enter the value" number
while [ $count -le $number ]
do
	
	power=`echo "2 ^ $count" | bc`
	
	if [ $power -le $ul ]
	then
		echo "$power"
	fi
	count=$(($count+1))
done
