#!/usr/bin/env bash
# File: guessinggame.sh
# To run: bash guessinggame.sh
# Author: Clara Tump
# Last edited: 8/8/2019

num_files=$(ls | wc -l)
correct=0

while [[ $correct -eq 0 ]]
do
	echo "please guess the number of files in this directory:"
	read guess
	echo "your guess was: " $guess
	if [[ $guess -gt $num_files ]]
	then
		echo "Incorrect guess! Try a lower number."
	elif [[ $guess -lt $num_files ]]
	then
		echo "Incorrect guess! Try a higher number."
	else
		#guess was correct
		correct=1
		echo "Correct. The number of files is indeed " $num_files
	fi
done
	

