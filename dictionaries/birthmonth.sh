#!/bin/bash

declare -A birthMonths

jan=()
feb=()
mar=()
apr=()
may=()
jun=()
jul=()
aug=()
sept=()
oct=()
nov=()
dec=()

for (( i=0; i<50; i++ ))
do
	bday=$(($RANDOM%12 + 1))
	
	if(($bday==1))
	then
		jan=$(($jan+1))  
  	elif(($bday==2))
	then
      		feb=$(($feb+1))
	
	elif(($bday==3))
	then
		mar=$(($march+1))

	elif(($bday==4))
	then
		apr=$(($apr+1))
	
	elif(($bday==5))
	then
		may=$(($may+1))

	elif(($bday==6))
	then
		jun=$(($jun+1))

	elif(($bday==7))
	then
		jul=$(($jul+1))
	
	elif(($bday==8))
	then
		aug=$(($aug+1))

	elif(($bday==9))
	then
		sept=$(($sept+1))
	
	elif(($bday==10))
	then
		oct=$(($oct+1))

	elif(($bday==11))
	then
		nov=$(($nov+1))
	else
		dec=$(($dec+1))
	fi

done

birthMonths["Jans"]=$jan
birthMonths["Febs"]=$feb
birthMonths["Mars"]=$mar
birthMonths["Aprs"]=$apr
birthMonths["Mays"]=$may
birthMonths["Juns"]=$jun
birthMonths["Juls"]=$jul
birthMonths["Augs"]=$aug
birthMonths["Septs"]=$sept
birthMonths["Octs"]=$oct
birthMonths["Novs"]=$nov
birthMonths["Decs"]=$dec

for k in ${!birthMonths[@]}
do
	echo " $k: ${birthMonths[$k]} "
done | sort

