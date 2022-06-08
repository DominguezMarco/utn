#!/bin/bash

# ejemplo for

lista=$(ls )

for i in $lista 
do
	file $i
done

exit 0
