#!/bin/bash
read -p "enter the value:-" value
if (($value %2 == 0))
then
    echo "$value is even"
else
    echo "$value is odd"
fi
