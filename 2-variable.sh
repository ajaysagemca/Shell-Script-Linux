#!/bin/bash
#USER DIFINE VARIABLE
name="ajay"
age="22"
pro="program"
pro1="ing"
echo $name

echo "my name is $name and age is $age"
echo "my name is ${name} and age is ${age}"
echo 'my name is ${name} and age is ${age}'
echo "${pro}ing"
echo 
echo "${pro}${pro1}"

#SYSTEM VARIABLES
echo ${SHELL}
echo ${HOME}
echo ${OSTYPE}
echo ${PATH}
echo ${$}
echo ${PPID}
echo ${HOSTNAME}
echo ${PWD}

sleep 5
echo $SECONDS
