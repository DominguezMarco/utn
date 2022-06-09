#!/bin/bash

function alerta () {
        echo "No es posible interrumpir el examen, dispone de 60 minutos"
    }

    trap alerta INT TERM

FIRSTNAME=""
LASTNAME=""
DATAFILE=PreguntasAdministrador.txt
RESULTFILE=respuestas.out
function getName () {
    CONT=1
    while [ $CONT -ne 0 ]
    do
        echo "Debe ingresar su nombre y apellido"
        echo "Ingrese su nombre"
        read FIRSTNAME
        echo "Ingrese su apellido"
        read LASTNAME
        if [ -n "$FIRSTNAME" -a -n "$LASTNAME" ]
        then
            CONT=0
            RESULTFILE=${FIRSTNAME}-${LASTNAME}-${RESULTFILE}
        fi
        echo "Nombre y Apellido: $FIRSTNAME $LASTNAME" >> $RESULTFILE
    done
    }

if [ -f $RESULTFILE ]
then
    mv $RESULTFILE $RESULTFILE.$$
fi

# Main
getName

NUMBER=0
while read line
do
    NUMBER=$(expr $NUMBER + 1)
    QUESTION=$(echo $line | cut -f1 -d\| )
    CHOISE1=$(echo $line | cut -f2 -d\| )
    CHOISE2=$(echo $line | cut -f3 -d\| )
    CHOISE3=$(echo $line | cut -f4 -d\| )
    CHOISE4=$(echo $line | cut -f5 -d\| )
    echo "$NUMBER) $QUESTION ?"
    echo ""
    echo "a) $CHOISE1"
    echo "b) $CHOISE2"
    echo "c) $CHOISE3"
    echo "d) $CHOISE4"
    answer=""
    while [ "$answer" != "a" -a "$answer" != "b" -a "$answer" != "c" -a "$answer" != "d" ]
    do
        echo "Ingrese la respuesta correcta a|b|c|d"
        printf "\-> "
        read answer </dev/tty
    done
    echo "$NUMBER|$answer" >> $RESULTFILE
done < $DATAFILE

exit 0
