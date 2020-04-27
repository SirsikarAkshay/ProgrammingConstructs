#!/bin/bash
arr=()

read -p "Enter the number of elements: " n

for (( i=0; i<$n; i++ ))
do
	read -p "Enter the element " a
	arr+=($a)
done


for (( i=0; i<$(($n-2)); i++ ))
do
	for (( j=$(($i+1)); j<$(($n-1)); j++ ))
	do
		for (( k=$(($j+1)); k<n; k++ ))
		do
			if(($((${arr[$i]}+${arr[$j]}+${arr[$k]})) == 0))
			then
				echo "${arr[$i]}" " " "${arr[$j]}" " " "${arr[$k]}"
			fi
		done
	done
done

