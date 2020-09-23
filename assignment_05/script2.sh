#!/bin/bash
# Code by Lucas Jeay-Bizot
# Created: 09/22/2020
# Last Modified: 09/22/2020
# Class CS 510
# Assignment 5
# COMMENT: This script modifies lines in txt files according to assignment instructions
#
#Go to Dir
cd main_folder
#Loops generation of 500 folders with 5 line txt files
for i in {1..500}
do
	cd folder_$i
	if (($(($i%10))==1))
	then
	sed -i '4s/.*/eat beets/' file.txt
	elif (($(($i%10))==4))
	then
	sed -i '4s/.*/squash are great/' file.txt
	elif (($(($i%10))==5))
	then
	sed -i '4s/.*/dogs are better than cats/' file.txt
	elif (($(($i%10))==7))
	then
	sed -i '4s/.*/hello world/' file.txt
	elif (($(($i%10))==0))
	then
	sed -i '4s/.*/turtles are better than dogs/' file.txt
	else
	sed -i '4s/.*//' file.txt
	fi
	cd ..	
done
cd ..
