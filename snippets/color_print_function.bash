#!/bin/bash
function msgred() {
    echo -e "\033[0;31m$@\033[0m"
}

function msggreen() {
    echo -e "\033[0;32m$@\033[0m"
}

function msgyellow() {
    echo -e "\033[0;33m$@\033[0m"
}

function msgblue() {
    echo -e "\033[0;34m$@\033[0m"
}

function msgmagenta() {
    echo -e "\033[0;35m$@\033[0m"
}

function msgcyan() {
    echo -e "\033[0;36m$@\033[0m"
}

echo "start"

msgred "red 12345"
msggreen "green 12345"
msgyellow "yellow 12345"
msgblue "blue 12345"
msgmagenta "magenta 12345"
msgcyan "cyan 12345"

echo "end"
