#!/bin/bash -x

arr=()

for ((i=0; i<10; i++ ))
do
	d=$(($RANDOM%1000))
	arr[i]=$d
done

echo ${arr[@]}
