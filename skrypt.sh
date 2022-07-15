#!/bin/bash

#test
arg1=$1
arg2=$2

if [ -z "$arg2" ]
then
	arg2=100
fi

if [ "$arg1" == "--date" ] || [ "$arg1" == "-d" ];
then
echo $(date '+%Y-%m-%d')
read
fi



if [ "$arg1" == "--logs" ] || [ "$arg1" == "-l" ];
then
	
	for (( i=1; i<=$arg2; i++ ))
	do 
		mkdir log$i
		
		touch log$i/log$i.txt 
		echo log$i/log$i.txt > log$i/log$i.txt
		echo `basename "$0"` >> log$i/log$i.txt
		echo $(date '+%Y-%m-%d') >> log$i/log$i.txt
		
	done
read
fi

if [ "$arg1" == "--init" ]
then
	git clone https://github.com/danieldsw/narzedziaIT.git
fi


if [ "$arg1" == "--help" ] || [ "$arg1" == "-h" ];
then
	echo "Wszysktie dostepne flagi:"
	echo "--date   pokazuje aktualna date"
	echo "--logs   tworzy 100 plikow txt o nazwie logx"
	echo "--logs <liczba>   tworzy wybrana ilosc plikow txt"
	read
fi 



