#!/bin/bash
input="$HOME/Desktop/dict.txt"

function is_yes(){
	if [[ $1 == *"yes"* ]]
	then
		echo "indice $2 is $3"
		exit 1
	fi
}

function go(){
	res=$(curl -silent 'https://chaquedetail.fr/wp-content/themes/astra-child/form_password/valid_input.php' --data "id=indice$1&val=$2")
	echo $res
}
COUNTER=0
while IFS= read -r line
do
	for i in `seq 1 7`;
     do
	 	res=$(go $i $line)
 		is_yes "$res" "$i" "$line"
 		echo "$COUNTER words tested"
 		let COUNTER=COUNTER+1 
     done    
 done < "$input"