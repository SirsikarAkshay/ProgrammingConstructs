#!/bin/bash 

read -p "Enter the number of terms" n

for (( count=1; count<=n; count++ ))
do
	if [ $count -lt $n ]
	then 
		echo -e "1/$count+ \c"
	else
		echo -e "1/$count"
	fi
done
