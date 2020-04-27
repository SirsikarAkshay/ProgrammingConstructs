#!/bin/bash

declare -A birthMonths
janArray=()
febArray=()
marArray=()
aprArray=()
mayArray=()
junArray=()
julArray=()
augArray=()
sepArray=()
octArray=()
novArray=()
decArray=()

for (( i=0; i<50; i++ ))
do
	bday=$(($RANDOM%12 + 1))
	
	if(($bday==1))
	then
		janArray+=("$bday")
  
  	elif(($bday==2))
	then
      		febArray+=("$bday")
	
	elif(($bday==3))
	then
		marArray+=("$bday")

	elif(($bday==4))
	then
		aprArray+=("$bday")
	
	elif(($bday==5))
	then
		mayArray+=("$bday")

	elif(($bday==6))
	then
		junArray+=("$bday")

	elif(($bday==7))
	then
		julArray+=("$bday")
	
	elif(($bday==8))
	then
		augArray+=("$bday")

	elif(($bday==9))
	then
		sepArray+=("$bday")
	
	elif(($bday==10))
	then
		octArray+=("$bday")

	elif(($bday==11))
	then
		novArray+=("$bday")
	else
		decArray+=("$bday")
	fi

done

birthMonths["Jans"]=$janArray
birthMonths["Febs"]=$febArray
birthMonths["Mars"]=$marArray
birthMonths["Aprs"]=$aprArray
birthMonths["Mays"]=$mayArray
birthMonths["Juns"]=$junArray
birthMonths["Juls"]=$julArray
birthMonths["Augs"]=$augArray
birthMonths["Septs"]=$sepArray
birthMonths["Octs"]=$octArray
birthMonths["Novs"]=$novArray
birthMonths["Decs"]=$decArray

for k in ${!birthMonths[@]}
do
	echo " $k: ${birthMonths[$k]} "
done

