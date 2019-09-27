#!/usr/bin/env bash
# File: guessinggame.sh

echo `pwd`
amount_of_files=$(eval ls -l | wc -l)
amount_of_files=`expr $amount_of_files - 1`
echo "Amount of files: $amount_of_files"
echo "How many files are in the current directory?"
guess=$1
echo "guess: $guess"

function check_guess() {
echo "guess again"
read guess
if [[ $guess -eq $amount_of_files ]]
then echo "Congratulations, you guessed the correct number"
elif [[ $guess -gt $amount_of_files ]]
then echo "Your guess is too high"
elif [[ $guess -lt $amount_of_files ]]
then echo "Your guess is too low"
fi
}

while [[ $guess -ne $amount_of_files ]]
do 
	check_guess
done

