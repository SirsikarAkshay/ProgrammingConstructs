#!/bin/bash  

i=1
hwins=0
twins=0

while [ $hwins -ne 11 ] && [ $twins -ne 11 ]
do

r=$(($RANDOM%2 + 1))

if(($r==1))
then
	hwins=$(($hwins+1))
else
	twins=$(($twins+1))
fi

i=$((i+1))
done

if(($hwins==11))
then 
	echo "heads won 11 times"
else
	echo "Tails won 11 times"
fi
