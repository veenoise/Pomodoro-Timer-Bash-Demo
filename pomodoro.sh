#!/usr/bin/env bash

echo "Starting Pomodoro Timer"

while [[ true ]]
do
	echo "Begin work"
	for i in {0..24}
	do
		echo "min:" $i
		sleep 60
		echo -en "\033[1A\033[K"
	done
	
	play ./notification/waterphone.mp3

	for i in {1..13}; do echo -en "\033[1A\033[K"; done	

	echo "Break time"

	for i in {0..4}
	do
		echo "min:" $i
		sleep 60
		echo -en "\033[1A\033[K"
	done

	play ./notification/guitar-riff.mp3

	for i in {1..13}; do echo -en "\033[1A\033[K"; done

done
