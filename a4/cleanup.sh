#!/bin/bash

#define input and output files 
input_file="movies.csv"
output_file="output.txt"

#loop through each line in the "movies.csv" file
while IFS= read -r line; do
	#if the line contains "Director:" then...
	if echo $line | grep -q "Director:"; then
		#continue reading lines until...
		while IFS= read -r line; do
			#the "|" is in the line.
		        #then break out of the while loop.
			#this means that the section of Directors is over. 
			if echo $line | grep -q -E "\|"; then
				break
			fi
		done
	else
		#all other lines belong to the output
		echo $line >> $output_file
	fi
done < "$input_file"
