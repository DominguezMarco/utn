#!/bin/bash 

# Ejemplo script con IF


if [ $1 = "hola" ]
then
	echo "es el valor esperado"
else
	echo "error" 
	exit 1
fi


exit 0
