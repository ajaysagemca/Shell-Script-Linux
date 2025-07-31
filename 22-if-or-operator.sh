#!/bin/bash
os="MINGW64_NT-10.0-22631"
if [[ $osS == "MINGW64_NT-10.0-22631" || $UID -eq 197609 ]]
then 
    echo "operating system is $os and UID is $UID"
fi

# do you want to continue (Y/y/yes)
read -p "do you want to continue (Y/y/yes):--" usr
if [[ ${usr,,} == "Y"  || ${usr,,} == "yes" ]]
then
    echo "you want it"
else
    echo "you don't want it"
fi