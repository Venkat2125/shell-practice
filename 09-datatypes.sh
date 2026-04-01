#!/bin/bash

#datatypes: in linux everything is string
x=10
y=40
z="venkat"
total=$(($x+$y+$z))
echo "total of x,y,z =${total}"

#variables
name=("venkat" "ammu" "sai" "chitti" "umesh" "puru")
echo "all names: ${name[@]}"