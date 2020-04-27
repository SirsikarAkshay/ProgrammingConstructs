#!/bin/bash

function toCelsius(){

c=$(echo "($1-32) * 0.55" | bc)
echo $c
}

function toFaranheit(){
f=$(echo "($1*1.8) + 32" | bc)
echo $f
}

echo "1: From celsius to faran"
echo "2: From faran to celsius"

read -p "Enter the option" opt

case $opt in
	1) read -p "Enter the celsius" c
	   toFaranheit $c
	   ;;
	2) read -p "Enter the faranheit" f
	   toCelsius $f
	   ;;
	*) echo "Invalid case"
	   ;;
esac

