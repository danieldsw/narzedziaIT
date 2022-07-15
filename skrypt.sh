#!/bin/bash
<<<<<<< HEAD
#test
plik=$1

if [ "$plik" == "--date" ]
then
echo $(date '+%Y-%m-%d')
=======
plik=$1

if [ "$plik" == "--logs" ]
then
for (( i=1; i<=100; i++ ))
do 
	touch log$i.txt 
	echo log$i.txt > log$i.txt
	echo `basename "$0"` >> log$i.txt
	echo $(date '+%Y-%m-%d') >> log$i.txt
done
>>>>>>> skrypty2
fi 

read