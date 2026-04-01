#!/bin/bash

#condtion
number=$1

if [ $number -lt 10 ];
then
    echo "number $number less than 10"
elif [ $number -gt 10 ];
then
    echo "number 10 gereater than $number"
else
    echo "give the number"
fi