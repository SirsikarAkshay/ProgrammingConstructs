#!/bin/bash
read -p "Enter the number of elements" n

echo "enter Numbers in array:"
for (( i = 0; i < $n; i++ ))
do
nos[i]=$(($RANDOM%100))
done
#printing the number before sorting
echo "Numbers in an array are:"
for (( i = 0; i < $n; i++ ))
do
echo ${nos[$i]}
done
# Now do the Sorting of numbers
for (( i = 0; i < $n ; i++ ))
do
for (( j = $i; j < $n; j++ ))
do
if [ ${nos[$i]} -gt ${nos[$j]}  ]; then
t=${nos[$i]}
nos[$i]=${nos[$j]}
nos[$j]=$t
fi
done
done
# Printing the sorted number
echo -e "\nSorted Numbers "
for (( i=0; i < $n; i++ ))
do
echo ${nos[$i]}
done
secLas=$(($n-2))
echo "Second largest number is ${nos[$secLas]}"
echo "second smallest number is ${nos[1]}"

