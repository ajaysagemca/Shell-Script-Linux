#!/bin/bash

# check file is dir
# block device
# char file
# if file is exist
# read permission
# write permission
# execute permission

# check file is dir
file_full_path="/shell"
if [ -d $file_full_path ]
then
    echo "${file_full_path} is dir"
fi
