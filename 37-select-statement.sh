#!/bin/bash
# select os in windows linux mac
# do
#   echo "select your $os"
# done
PS3="PLEASE SELECT OS?:--"
select os in window linux mac
do
  case $os in 
   window)
   echo "window"
   ;;
   linux)
   echo "linux"
   ;;
   mac)
   echo "mac"
   ;;
   *)
   echo "invalid"
   ;;
  esac
done