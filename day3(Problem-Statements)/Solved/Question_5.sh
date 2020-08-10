#!/bin/bash 

read -p "Enter a name of the folder you want to make: " folder
if [ -d $folder ]
then
	echo Folder exists already
else
	mkdir $folder
	echo $folder created
fi
