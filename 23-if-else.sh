#!/bin/bash
name1="ajay sahu"
name2="ajaysahu"
if [[ ${name1} == ${name2} ]]
then 
    echo "both strings are equal"
else
    echo "both strings  are not equal"
fi

name11="vijay sahu"
name22="vijay sahu"

if [[ ${name11} != ${name22} ]]
then 
    echo "both strings are not eqale"
else
    echo "both strings are equal"
fi

name=""
if [ -n "$name" ]
then 
   echo "lenth of a string non zero"
else
    echo "lenth of a string  zero"
fi

name2="j"
if [[ -z $name2 ]]
then 
   echo "lenth of a string is zero"
 else
     echo "lenth of a string non zero"  
fi


