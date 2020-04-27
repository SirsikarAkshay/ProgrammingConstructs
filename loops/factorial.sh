#!/bin/bash

read -p "Enter the number" num
prod=1

for (( i=num; i>0; i-- ))
do
	prod=$(($prod*i))
done 
echo "Factorial of $num is $prod"
