#!/bin/bash

#given numbr even or odd
number=$1
if [ $number/2 -eq 0 ];
then
    echo "$number is even number"
else
    cho "$number is odd number"
fi
