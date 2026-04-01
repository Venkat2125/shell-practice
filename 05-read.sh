#!/bin/bash
#read use to user will enter
echo "Enter your number"
read number
echo "your number is $number"

# Now you want to set your ATM pin
echo "Enter your PIN"
read PIN_NUMBER
echo "your pin number is $PIN_NUMBER"

#output:
#Enter your PIN
#1234
#your pin number is 1234
echo "Now we enter ping agian we add read -s"
#above output i't showng your pin. but we don't need to see anyone. if we login linux server we enter pin did we see? No
#use read -s "it will not visible your pin"
echo "Enter your PIN"
read -s PIN_NUMBER_1
echo "your pin number is $PIN_NUMBER_1"