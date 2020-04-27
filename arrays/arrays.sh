#!/bin/bash

arr=()
read -p "Enter the number of elements in the array" n

echo "Enter the array elements"

for (( i=0; i<n; i++ ))
do
	read -p " " arr[$i]
done

echo ${arr[@]}




