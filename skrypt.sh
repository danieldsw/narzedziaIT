#!/bin/bash

#test
plik=$1
liczba=$2

if [ -z "$liczba" ]
then
	liczba=100
fi

if [ "$plik" == "--date" ]
then
echo $(date '+%Y-%m-%d')
read
fi



if [ "$plik" == "--logs" ]
then
	
	for (( i=1; i<=$liczba; i++ ))
	do 
		touch log$i.txt 
		echo log$i.txt > log$i.txt
		echo `basename "$0"` >> log$i.txt
		echo $(date '+%Y-%m-%d') >> log$i.txt
	done
read
fi

if [ "$plik" == "--help" ]
then
	echo "Wszysktie dostepne flagi:"
	echo "--date   pokazuje aktualna date"
	echo "--logs   tworzy 100 plikow txt o nazwie logx"
	echo "--logs <liczba>   tworzy wybrana ilosc plikow txt"
	read
fi 



