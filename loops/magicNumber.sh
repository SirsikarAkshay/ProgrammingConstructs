#!/bin/bash

echo "Think of a number between 1 to 100"

choice="n"
y=1
n=0

ll1=1
ul1=50
ll2=51
ul2=100

while(($choice=="n"))

do
	read -p "does your choice lie between $ll1 and $ul1 y or n: " c
	if(($c=="y"))
	then
		read -p "Is your choice $ll1: " f
		if(($f=="y"))
		then
			echo "Number found: $ll1"
			choice="y"
		else
			read -p "Is your choice $ul1: " p
			if(($p=="y"))
			then
				echo "Number found: $ul1"
				choice="y"
			else
				ll1=$ll1
				ul2=$ul1
				ul1=$(($ul1/2))
				ll2=$(($ul1+1))
			fi
		fi
		if(($(($ul1-$ll1))==2))
		then
			read -p "Is your number $ll1" n1
			if(($n1=="y"))
			then
				echo "Number found: $ll1"
				choice="y" 
				exit
			else
				num2=$(($ll1+1))
				read -p "Is your number $num2" n2
				if(($n2=="y"))
				then
					echo "Number found: $num2"
					choice="y"
				else
					read -p "Is your number $ul1" n3
					if(($n3=="y"))
					then
						echo "Number found: $ul1"
						choice
					else
						echo "Invalid choice!!!"
					fi
				fi
			fi
		fi
	else
		read -p "Is your choice $ll2: " f
                if(($f=="y"))
                then
                        echo "Number found: $ll2"
                        choice="y"
                else
                        read -p "Is your choice $ul2: " p
                        if(($p=="y"))
                        then
                                echo "Number found: $ul2"
                                choice="y"
                        else
                                ll1=$(($ll2+1))
                                ul1=$(($ll2+$ul2/2))
                                ll2=$(($ul1+1))
				ul2=$ul2
                        fi 
		fi
		if(($(($ul1-$ll1))==2))
		then
                        read -p "Is your number $ll1" n1
                        if(($n1=="y"))
                        then
                                echo "Number found: $ll1"
                                choice="y"
                                exit
                        else
                                num2=$(($ll1+1))
                                read -p "Is your number $num2" n2
                                if(($n2=="y"))
                                then
                                        echo "Number found: $num2"
                                        choice="y"
				else
                                        read -p "Is your number $ul1" n3
                                        if(($n3=="y"))
                                        then
                                                echo "Number found: $ul1"
                                                choice="y"
                                        else
                                                echo "Invalid choice!!!"
                                        fi
                                fi
                        fi
                fi     
	fi
done

