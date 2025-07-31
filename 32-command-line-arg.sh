#!/bin/bash
# $@ vs "$@""
echo " $@ =============== one ==========="
for i in "$@"
do
  echo $@
done

echo 

# $* vs "$*"
echo " $* =============== two ==========="
for i in "$*"
do
  echo $*
done

