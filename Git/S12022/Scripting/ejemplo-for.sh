#!/bin/bash
#comentando linea
#nueva linea
# ejemplo for

lista=$(ls )

for i in $lista 
do
	stat $i
done

exit 0
