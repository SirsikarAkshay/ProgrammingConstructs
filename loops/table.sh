#!/bin/bash 

result=1
read -p "Enter the value" number
for (( count=1; count<=number; count++ ))
do
	echo "2 ^ $count" | bc
done
