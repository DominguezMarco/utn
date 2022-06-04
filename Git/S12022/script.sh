#!/bin/bash

echo "Hola Mundo" 

case $1 in
	start|START)
		echo "se paso el parametro de inicio" 
		;;
	stop|STOP)
		echo "se paso el parametro de fin"
		;;
	*)
		echo "uso: $0 (start|stop)"
		;;
esac


exit 0
