#!/bin/bash
number=10
if [ $number  -eq 11 ]
then
    echo "number is equal to 10 -1"
else
    if [ $number -lt 1 ]
    then 
        echo "number is less then 15 -1"
    else
        echo "number is grether then 9 -1"
    fi
fi 

if [ $number -eq 10 ]
then
    echo "number is equal to 10 -2"
    if [ $number -lt 15 ]
    then
        echo echo "number is less then 15 -2"
    else
       echo "number is grether then 9 -2"
    fi
fi
       
