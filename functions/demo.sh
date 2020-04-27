#!/bin/bash -x

function printName() {
	
	if(($1>1)) 
	then
		echo "God"
	else
		echo "Nothing"
	fi
}

var=$(printName 1 2)
echo $var
