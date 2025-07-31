#!/bin/bash

#infine chala jayega
# while [[ $answer != "yes" ]]
# do
#   echo "enter your $answer"
# done

# while loop will keep running until the condition becomes false.
# while [[ $answer != "yes" ]]
# do
#   read -p "enter your yes:--" answer          
# done


# while true
# do 
#   echo "this is a test"
# done


# number=1
# while [[ ${number} -le 10 ]]
# do
#   echo ${number}
#   ((number++))
# done

read -p "enter the value:--" value
number=1
while [[ ${number} -le 10 ]]
do
  echo $((number*value))
  ((number++))
done