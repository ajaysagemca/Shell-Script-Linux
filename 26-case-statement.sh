#!/bin/bash
action=${1,,} #command line argument

# if [[ $action == "start" ]]
# then
#     echo "goin to start"
# elif [[ $action == "stop" ]]
# then
#     echo "goin to stop"
# elif [[ $action == "restart" ]]
# then
#     echo "goin to restart"
# elif [[ $action == "reload" ]]
# then 
#     echo "goin to reload"
# fi


case ${action} in 
    start | START)
    echo "goin to start"
    ;;
    stop | STOP)
    echo "goin to stop"
    ;;
    restart)
    echo "goin to restart"
    ;;
    reload)
    echo "goin to reload"
    ;;
    *)
    echo "please enter the correct command line arg"
esac

