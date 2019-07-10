#!/bin/bash
input="dict.txt"

proc=0
N=6
COUNTER=0

while IFS= read -r line
do
	((proc=proc%N)); ((proc++==0)) && wait
	./oneWord.sh $line &
 done < "$input"