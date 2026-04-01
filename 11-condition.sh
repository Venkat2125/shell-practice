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
echo "Enter a number"
read number
if [ $(($number % 2)) -eq 0 ];
then
    echo "given number $number is even"
else
    echo "given number $number is odd"
