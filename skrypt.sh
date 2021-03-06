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
		

		touch log$i.txt 
		echo log$i.txt > log$i.txt
		echo `basename "$0"` >> log$i.txt
		echo $(date '+%Y-%m-%d') >> log$i.txt

	done
read
fi

if [ "$arg1" == "--error" ] || [ "$arg1" == "-e" ];
then
	for (( i=1; i<=$arg2; i++ ))
	do 
		mkdir error$i
		
		touch error$i/error$i.txt 
		echo error$i/error$i.txt > error$i/error$i.txt
		echo `basename "$0"` >> error$i/error$i.txt
		echo $(date '+%Y-%m-%d') >> error$i/error$i.txt
		
	done
fi

if [ "$arg1" == "--init" ]
then
	git clone https://github.com/danieldsw/narzedziaIT.git
fi



if [ "$arg1" == "--help" ] || [ "$arg1" == "-h" ];
then
	echo "Wszysktie dostepne flagi:"
	echo "--help   pokazuje wszystkie dostepne opcje"
	echo "--date   pokazuje aktualna date"
	echo "--logs   tworzy 100 plikow txt o nazwie logx"
	echo "--logs <liczba>   tworzy wybrana ilosc plikow txt"
	echo "--init   tworzy repozytorium w folderze"
	echo "--error  tworzy 100 plikow txt o nazwie errorx"
	echo "--error <liczba>   tworzy wybrana ilosc plikow txt"
	echo " "
	echo "-h   pokazuje wszystkie dostepne opcje"
	echo "-d   pokazuje aktualna date"
	echo "-l   tworzy 100 plikow txt o nazwie logx"
	echo "-l <liczba>   tworzy wybrana ilosc plikow txt"
	echo "-e  tworzy 100 plikow txt o nazwie errorx"
	echo "-e <liczba>   tworzy wybrana ilosc plikow txt"
	read
fi 



