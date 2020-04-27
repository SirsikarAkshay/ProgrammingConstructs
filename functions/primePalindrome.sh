#!/bin/bash 
read -p "num" n

function prime(){
flag=0

for (( i=2; i<$(($n/2)); i++ ))
do
        if(($((n % i))==0))
        then
        flag=1
        fi

done

if(($flag==1))
then
        echo "0"
else
        echo "1"
fi
}

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
	echo "$1 is prime and palindrome"
else
	echo "$1 is a prime but not a palindrome"
fi
}

var=$(prime $n)

if(($var=="1"))
then
	pal=$(isPalindrome $n)
	echo $pal
else
	echo "not prime"
fi
