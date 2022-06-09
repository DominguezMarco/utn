#!/bin/bash

TEMPLATE=respuestas.OK
SCRIPT=$(basename $0)

# Recorro los examenes
GRADE=0
for file in $(ls | grep -v respuestas.OK | grep -v $SCRIPT) 
do
	GRADE=0
	first=1
	TMPFILE=$(mktemp)
	paste -d \| $TEMPLATE $file > $TMPFILE 
	line=$(cat $TMPFILE | head -1 ) 
	echo $line | cut -d\| -f2
	# Recorro las respuestas
	#cat $TMPFILE | while read line
	for line in $( cat $TMPFILE | tail -25 )
	do
		OK=$(echo $line | cut -d\| -f2)
		RESP=$(echo $line | cut -d\| -f4)
		if [ $OK = $RESP ]
		then
			GRADE=$(($GRADE + 1)) 
		fi
	done
	echo "Nota: $(($GRADE * 4))"
	rm $TMPFILE
done

exit 0
