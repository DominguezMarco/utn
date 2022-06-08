#!/bin/bash

# for = Recorre una lista de elementos asignandolos en una variable
# para el ejemplo elemento se llama nuestra variable
# seq = comando que permite generar una lista

for elemento in $(seq 1 10)
do 
	echo $elemento 
done

exit 0 
