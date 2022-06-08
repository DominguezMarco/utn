#!/bin/bash

# for = Recorre una lista de elementos asignandolos en una variable
# para el ejemplo elemento se llama nuestra variable

for elemento in $(cat /etc/hosts)
do 
	echo $elemento 
done

exit 0 
