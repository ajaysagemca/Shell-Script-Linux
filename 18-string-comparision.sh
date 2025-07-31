#!/bin/bash
#if [ "ajay sahu" == "ajay sahu" ]
#then 
  #  echo "both strings are eqale"
#fi

name="ajay sahu"
name0="vijay sahu"
name1="ajay sahu"
name2=""
if [[ ${name} == ${name1} ]]
then 
    echo "both strings are equal"
fi

if [[ ${name} != ${name0} ]]
then 
    echo "both strings are not eqale"
fi

if [ -n "$name" ]
then 
   echo "lenth of a string non zero"
fi

if [[ -z $name2 ]]
then 
   echo "lenth of a string is zero"
fi

