#!/usr/bin/env bash
# File: guessinggame.sh

function play_game {
	local num_files=$(find $1 -type f | wc -l)
	local guess=-1
	while [[ $guess -ne $num_files ]]
	do
		read guess

		if [[ $guess -gt $num_files ]]
		then
			echo "Too high, try again!"
		elif [[ $guess -lt $num_files ]]
		then
			echo "Too low, try again!"
		else
			echo "Congratulations, that is correct!"
		fi
	done
}

echo "Guess the number of files in the directory and press enter."
play_game
