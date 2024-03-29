#!/bin/bash

function is_yes(){
	if [[ $1 == *"yes"* ]]
	then
		echo "$2 is $3"
		echo "$3" > $2
	fi
}

function go(){
	res=$(curl -silent 'https://chaquedetail.fr/wp-content/themes/astra-child/form_password/valid_input.php' --data "id=$1&val=$2")
	echo $res
}

for i in `seq 1 7`;
do
	res=$(go $i $line)
	is_yes "$res" "indice$i" "$line"
	echo "$COUNTER words tested"
	let COUNTER=COUNTER+1 
done    
res=$(go $i $line)
is_yes "$res" "password" "$line"
echo "$COUNTER words tested"
let COUNTER=COUNTER+1 
