#!/bin/bash
# also called nested if 
os="MINGW64_NT-10.0-22631"
if [[ $os == "MINGW64_NT-10.0-22631" ]]
then
    if [[ ${UID} -eq 197609 ]]
    then
        echo "os name is MINGW64_NT-10.0-22631 and UID ${UID}"
    fi
fi

# using AND condition
if [[ $os == "MINGW64_NT-10.0-22631" && ${UID} -eq 197609 ]]
then
    echo "os name is MINGW64_NT-10.0-22631 and UID ${UID}"
fi