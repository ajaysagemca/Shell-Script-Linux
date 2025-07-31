#!/bin/bash
number=1
while [[ $number  -lt 11 ]]
do
   echo $number
   if [[ $number -eq 5 ]]
   then
       echo "condition is true $number going to break the condition"
       break
    fi
   ((number++)) 
done