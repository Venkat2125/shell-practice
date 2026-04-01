#!/bin/bash

#datatypes: in linux everything is string
x=10
y=40
z="venkat"
total=$(($x+$y+$z))
echo "total of x,y,z =${total}"

#arrays
name=("venkat" "ammu" "sai" "chitti" "umesh" "puru")
echo "all names: ${name[@]}"

#index
city=("gvp" "kdr" "wrngl" "hyd" "bnglr" "tpt" "TN" "ap" "TS")
echo " city list ${city[@]}"
echo "index of fourth city: ${city[3]}"
echo "second city: third city: ${city[6]}"
echo "last city: ${city[12]}"

#addition
number1=47
number2=76
sum=$(($number1+$number2))
echo "sum of two numbers $sum"

#subtraction
num1=48
num2=73
sub=$(($num1-$num2))
echo "sub of num1, num2 = $sub"