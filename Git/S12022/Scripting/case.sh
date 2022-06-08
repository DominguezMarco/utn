#!/bin/bash

# Case ejecuta un bloque de acuerdo al valor de una variable
# nuestra variable va a ser el primer parametro que se le paso al script


case $1 in 
start)
	echo "starting ..... "
	touch /tmp/corriendo
	# comando....
	;;
stop)
	echo "stoping ....." 
	rm /tmp/corriendo
	;;
restart)
	$0 stop
	$0 start
	;;
status)
	if test -f /tmp/corriendo
	then
		echo "running.... "	
	else
		echo "not running ...." 
	fi
	;;
*)
	echo "$0 (start|stop|restart|status)"
	exit 1
	;;
esac

exit 0
