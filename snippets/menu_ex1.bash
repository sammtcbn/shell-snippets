#!/bin/bash

function showmenu() {
    echo "1) action 1"
    echo "2) action 2"
    echo "3) action 3"
    echo "4) action 4"
    echo "a) action a"
    echo "b) action b"
    echo "q) quit"
}

showmenu
read -p "Choose: " ins

case "$ins" in
    1)
        echo "action 1"
        ;;
    2)
        echo "action 2"
        ;;
    3)
        echo "action 3"
        ;;
    4)
        echo "action 4"
        ;;
    a)
        echo "action a"
        ;;
    b)
        echo "action b"
        ;;
    *)
        exit 0
esac
