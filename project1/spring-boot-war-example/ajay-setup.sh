#!/bin/bash

#####
# this script will setup this project.
# run ./ajay-setup.sh to run this project.
#####

#===== function ========
function installpackage() {
    local packagename=${1} 
    if ! apt-get install -y ${packagename}
    then
        echo "not able to install ${packagename}"
        exit 1
    fi
}

function mavenTarget() {
    local mavencmd=${1}
    if ! mvn ${mavencmd}
    then
        echo "maven fail"
        exit 1
    fi
}

#============= variable ++++========

if [[ $UID != 0 ]]
then
    echo "user is a not  root user"
    exit 1
fi

read -p "please enter the access path:--"  APP_CONTEXT
APP_CONTEXT=${APP_CONTEXT:-app}

if ! apt-get update
then
    echo "not able to update the repository"
    exit1
fi

installpackage maven
installpackage tomcat9
mavenTarget test
mavenTarget package

if cp -rvf target/hello-world-0.0.1-SNAPSHOT.war /var/lib/tomcat9/webapps/${APP_CONTEXT}.war
then
    echo "application deployment succesfully. you can acces it on http:/{ipaddress}/${APP_CONTEXT}"
else 
    echo "not able to deploy the application"
    exit 1
fi
exit 0