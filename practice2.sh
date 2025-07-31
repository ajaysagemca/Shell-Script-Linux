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

#install nginx
install tomcat9
install maven

#status nginx
status tomcat9
mvn -version


if sudo apt-get remove -y nginx nginx-core nginx-common
then 
    echo "current version remove succesfully=========="
else
    echo "current version not remove succesfully=========="
fi

# 2. Download the specific .deb package for nginx 1.22.0 (for Ubuntu focal)
wget http://nginx.org/packages/ubuntu/pool/nginx/n/nginx/nginx_1.22.0-1~focal_amd64.deb

# 3. Install the downloaded package
sudo dpkg -i nginx_1.22.0-1~focal_amd64.deb


if sudo apt-get install -f
then
    echo "downgrade version intall succesfully ===================="
else
    echo "downgrade version not intall succesfully ===================="
fi

