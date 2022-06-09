#!/bin/bash
#comentando linea
#nueva linea
# ejemplo for

function help {
	echo "usage: $@ directory"
	exit 1
}

if [ $# -ne 1 ]
then
	help
fi

lista=$(ls $1)

for i in $lista 
do
	stat $1/$i
done

exit 0
