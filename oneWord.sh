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
line=$1
for i in `seq 1 7`;
do
	res=$(go $i $line)
	is_yes "$res" "indice$i" "$line"
done    
res=$(go $i $line)
is_yes "$res" "password" "$line"
echo "$1 tested"
