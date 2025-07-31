#!/bin/bash
read -p "enter the (y/n) --" action
# case ${action} in
#     yes |[yes] | [Yy] | [Ee])
#     echo "you enter yes"
#     ;;
#     [Nn] | [Mm])
#     echo "you enter no"
#     ;;
#     *)
#     echo "invalid "
# esac

#correct approach
case ${action,,} in
    [y]* | yes)
    echo "you enter yes"
    ;;
    [n]* | no)
    echo "you enter no"
    ;;
    *)
    echo "invalid"
esac


