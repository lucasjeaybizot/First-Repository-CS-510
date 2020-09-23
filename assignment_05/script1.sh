#!/bin/bash
# Code by Lucas Jeay-Bizot
# Created: 09/22/2020
# Last Modified: 09/22/2020
# Class CS 510
# Assignment 5
# COMMENT: This script creates a folder with 500 subfolders, each containing a 5 line txt file
#
#Get path
Path=$("pwd")
#Create a directory
mkdir main_folder
#Go to Dir
cd main_folder
#Loops generation of 500 folders with 5 line txt files
for i in {1..500}
do
	mkdir folder_$i
	cd folder_$i
	touch file.txt
	for j in {1..5}
	do
	echo "line $j" >> file.txt
	done
	cd ..	
done
cd $Path
