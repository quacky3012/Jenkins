#!/bin/bash

NAME=$1
MIDDLENAME=$2
LASTNAME=$3
SHOW=$4

if [ "$SHOW" = "true" ]; then
 echo "Hello $NAME $MIDDLENAME $LASTNAME" >> /tmp/info
else
 echo "If you want to see the name then please mark the show option" >> /tmp/info-error
fi	
