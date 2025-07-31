#!/bin/bash

# check user root user or not
if [[ $UID == 0 ]]
then 
    echo "user is a root user"
else
    echo "user is not root user"
fi

#apt-get update
if apt-get update
then
    echo "update succesfully"
else
    echo "not update succesfully"
fi

#apt-get install nginx
if apt-get install nginx
then
    echo "nginx install succesfully"
else 
    echo "nginx not install succesfully"
fi

# service nginx status
if service nginx status
then 
    echo "service nginx status succesfull"
else
    echo "service nginx status not succesfull"
fi

#curl localhost
if curl localhost
then
    echo "nginx page opened"
else
    echo "nginx page not opened"
    
#current version 1.24 .5, remove this vesion, and install 2.3    
 #java install ,check install successfully install, which location and version , location change,    
     
    


    
    
















   
   





    


