#!/bin/bash
#test
plik=$1

if [ "$plik" == "--date" ]
then
echo $(date '+%Y-%m-%d')
fi 

read