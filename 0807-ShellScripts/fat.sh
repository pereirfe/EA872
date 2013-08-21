#! /bin/sh

while [ true ] 
do
    read NUM
    ORIG=$NUM
    
    if [ $NUM -eq 0 ]
	then
	echo "0! = 1"

    elif [ $NUM -lt 1 ]
	then
	echo "Numero invalido"

    else
	MULT=`expr $NUM - 1`
	while [ $MULT -gt 0 ]
	do
	    NUM=`expr $MULT \* $NUM`
	    MULT=`expr $MULT - 1`
	done
	echo "$ORIG! = $NUM"
    fi
done



