#!/bin/bash
pacagename="nginx"

function install () {
    #local
     myname="ajay"
    echo "instalation  ${1}"
}

function configuration () {
    pacagename="tomcat"
    echo "configuration ${1}"
}

echo "first ${pacagename}"
echo "myname= ${myname}"
install "${pacagename}"
echo "myname= ${myname}" 

echo "second ${pacagename}"
configuration "${pacagename}"

echo "third ${pacagename}"

