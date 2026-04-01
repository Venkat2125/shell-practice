#!/bin/bash

#condtion
number=$1
if [ $number -lt 10 ];
then
    echo "number less than 10"
else
    echo "Number graetr than or equal to 10"
fi