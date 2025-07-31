#!/bin/bash
#UPPER CASE
string="my name is ajay"
echo ${string} #my name is ajay
echo ${string^} #My name is ajay
echo ${string^^} #MY NAME IS AJAY

#lower case
string1="My Name Is Hemant"
echo ${string1,}  #my Name Is Hemant
echo ${string1,,} #my name is hemant

echo "lenth of a string is ${#string}"