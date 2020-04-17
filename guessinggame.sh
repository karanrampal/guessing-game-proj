#!/usr/bin/env bash
# File: guessinggame.sh

function play_game {
	local num_files=$(ls | wc -l)
	local guess=-1
	while [[ $guess =~ [^0-9]+ ]] || [[ $guess -ne $num_files ]]
	do
		read guess
		if [[ $guess =~ [^0-9]+ ]]
		then
			echo "Your guess should be a Natural Number, try again!"
		elif [[ $guess -gt $num_files ]]
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
