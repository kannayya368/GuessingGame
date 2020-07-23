#!/bin/bash

#Guessinggame Project
#Author : Kannayya K Rathi
#Date Created : 21-07-2020


GuessingGame()
{
	true=1
	while [ $true ]; do
		echo "enter number of files in the directory"
		read no_of_lines
		count=$(ls -l | grep ^[\-] | wc -l)
		if [[ $count -eq $no_of_lines ]]; then
			echo "You guessed right Congratulations"
			exit 0
		elif [[ $count -lt $no_of_lines ]]; then
			echo "You guessed more Try once more"
		else
			echo "You guessed less Try once more"
		fi
	done
}

echo "Welcome to Guessing Game"
GuessingGame

if [[ $? -eq 0 ]]; then
	echo "Program exited successfully"
fi
		
