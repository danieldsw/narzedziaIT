#!/bin/bash

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



