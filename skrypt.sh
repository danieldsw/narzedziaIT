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


echo $liczba
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



