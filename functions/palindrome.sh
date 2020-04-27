#!/bin/bash 

function isPalindrome(){
s1=0
rev1=""
temp1=$1

while [ $temp1 -gt 0 ]
do
	s1=$(($temp1%10))
	temp1=$(($temp1/10))
	rev1=$( echo ${rev1}${s1} )
done

if [ $1 -eq $rev1 ];
then 
	echo "$1 is a palindrome"
else
	echo "$1 is not a palidrome"
fi
}

for (( i=0; i<2; i++ ))
do
	read -p "Enter the number" num
	isPalindrome $num
done

