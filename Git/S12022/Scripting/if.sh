#!/bin/bash 

# script que espera un parametro y lo imprime
# $1 primer parametro
# $2 segundo parametro
# $n n parametro
# $# contine la cantindad de parametros que se le pasan al script 
# $? valor de retorno de un comando

if test $# -eq 1
then
	echo "el parametro es $1"
	RETVAL=0
else
	echo "Error"
	RETVAL=1
fi

exit $RETVAL 
