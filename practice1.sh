#!/bin/bash
function install() {
    package=${1}
    if apt-get install -y ${package}
    then
        echo "${package} install succesfully======================="
    else
        echo "${package} not install succesfully"
    fi
}

function status() {
    package1=${1}
    if sudo systemctl status ${package1}
    then
        echo "service ${package1} status succesfull======================="
    else
        echo "service  status ${package1} not succesfull"
    fi
}

# check user root user or not
if [[ $UID == 0 ]]
then
    echo "user is a root user========================="
else
    echo "user is not root user"
fi

#apt-get update
if apt-get update
then
    echo "update succesfully==========="
else
    echo "not update succesfully"
fi

install nginx
install tomcat9 #tomcat9
install maven

status nginx
status tomcat9
mvn -version

nginx -v
