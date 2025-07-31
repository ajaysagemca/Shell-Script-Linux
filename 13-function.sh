#!/bin/bash
function instalation(){
    echo "instalation 1"
    echo "instalation 2"
}
instalation

echo 

configuration () {
    echo "configuration 1"
    echo "configuration 1"
}
configuration

echo 

function deploy {
    instalation
    echo "deploy 1"
    echo "deploy 1"
}
deploy