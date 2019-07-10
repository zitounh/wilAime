# Description

brute force https://chaquedetail.fr

## IDEA of the script
This project is a bash script to brute force indices from https://chaquedetail.fr.

The idea of the script is to iterate over a french dictionary and make post request to https://chaquedetail.fr/wp-content/themes/astra-child/form_password/valid_input.php with the following data : 
```
id=indice1&val=value
```

where *id* takes values in "indice1" "indice2" "indice3" "indice4" "indice5" "indice6" "indice7"
and *val* takes any suspected value corresponding to the choosen id

## RUN

To run the script you just need to add excute permission to the script with :
``` chmod u+x bruteforce.sh```
and to launch the script :
```./bruteforce.sh```
