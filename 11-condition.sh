#!/bin/bash

#given numbr even or odd
number=$1
if [ $((number % 2)) -eq 0 ];
then
    echo "$number is even number"
else
    echo "$number is odd number"
fi

#or
num1=$1
num2=$((num1/2))
if [ $num2 -eq 0 ];
then
    echo "$num1 is even number"
else
    echo "$number is odd number"
fi
