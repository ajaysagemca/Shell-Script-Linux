#!/bin/bash
function instalation(){
    echo "instalation 1 ${1}"
    echo ${FUNCNAME}
}

configuration () {
    echo "configuration 1 ${1}"
    echo ${FUNCNAME}
}

function deploy {
    echo "deploy 1 ${1}"
    echo ${FUNCNAME}
}
instalation "nginx"
echo
configuration "file"
echo
deploy "website"