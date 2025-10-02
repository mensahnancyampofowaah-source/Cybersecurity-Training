#!/bin/bash


### Number Comparison
### This scripts takes two numbers and compare them

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2


## Check greater than
if [ $num1 -gt $num2 ];
then
         echo "$num1 is greater than $num2"
elif [ $num2 -gt $num1 ];
then
         echo "$num2 is greater than than the $num1"
else
         echo "$num1 is equal to the second $num2"
fi
