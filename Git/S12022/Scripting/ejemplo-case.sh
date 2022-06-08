#!/bin/bash

# Ejemplo case

case $1 in
	start)
		echo "comenzo"
		;;
	stop)
		echo "termino"
		;;
	*)
		echo "no se" 
		exit 1
		;;
esac


exit 0
