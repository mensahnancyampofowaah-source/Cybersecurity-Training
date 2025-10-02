#!/bin/bash

### Check values against days of the week (1-7)


read -p "Please enter the number of the day: " day

if [ $day -eq 1 ];
then
        echo "Today is Sunday"
elif
           [ $day -eq 2 ];
then
        echo "Today is Monday"
elif
           [ $day -eq 3 ];
then
        echo "Today is Tuesday"
elif
           [ $day -eq 4 ];
then
         echo "Today is Wednesday"
elif
           [ $day -eq 5 ];
then
         echo "Today is Thursday"
elif
            [ $day -eq 6 ];
then
          echo "Today is Friday"
elif
            [ $day -eq 7 ];
then
          echo "Today is Saturday"
else
          echo "Invalid number entered"
fi
