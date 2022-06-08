#!/bin/bash

# ejemplo while

file=/tmp/utn

while test -f /tmp/utn 
do
	echo "el archivo $file existe"
	sleep 1
done

exit 0
