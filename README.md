# wilAime
brute force https://chaquedetail.fr

This project is a bash script to brute force indices from https://chaquedetail.fr.

The idea of the script is to iterate over a french dictionary and make post request to https://chaquedetail.fr/wp-content/themes/astra-child/form_password/valid_input.php with the following data : 
```
id=indice1&val=value
```

where *id* takes values in "indice1" "indice2" "indice3" "indice4" "indice5" "indice6" "indice7"
and *val* takes any suspected value for corresponding to the id

Here the script stop once any indice is found.
