#!/bin/bash 

read -p "Enter the number" num

flag=0

for (( i=2; i<$(($num/2)); i++ ))
do
	if(($((num % i))==0))
	then
	flag=1
	fi
	
done

if(($flag==1))
then
	echo "not prime"
else
	echo "prime"
fi
