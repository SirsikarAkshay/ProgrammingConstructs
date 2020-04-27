#!/bin/bash

choice="n";

l1=1
u1=50
l2=51
u2=100

while(($choice=="n"))
do
	read -p "does your choice lie between $ll1 and $ul1 y or n" c
	if(($c=="y"))
	then
		echo "yes"
	elif(($c=="n"))
	then
		exit
	fi
done

