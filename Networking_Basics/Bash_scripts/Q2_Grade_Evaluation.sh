#!/bin/bash

## This scripts evaluates a grade based on input
read -p "Enter a grade(0-100): " grade

## Check number is really between 0-100
if [ $grade -lt 0 ] || [ $grade -gt 100 ]; 
then
        echo "$grade should be between 0-100"
     exit 1
fi


if [ $grade -ge 90 ];
then
       echo "You had A"
elif [ $grade -ge 80 ];
then
       echo "You had B"
elif [ $grade -ge 70 ];
then
       echo "You had C"
elif [ $grade -ge 60 ];
then
       echo "You had D"
else
       echo "You had F"
fi
