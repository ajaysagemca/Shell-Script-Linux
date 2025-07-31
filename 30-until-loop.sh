#!/bin/bash
read -p "enter the value:--" value
number=1
until [[ $number -eq 11 ]]
do
  echo $((number*value))
  ((number++))
done