#! /bin/sh
if [ $# -eq 0 ]
then
    set $PWD
fi
for ARG in $*
    do
    case $ARG in 
        --proof=*)
            echo "HELLO" ;;
	*) 
	    echo "Bye";;
    esac
done