#!/bin/bash
set -e
set -u

SCRIPT_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
ME=$(basename $0)
argc=$#

function info() {
    printf "\033[0;36m[INFO] ${*}\033[0m\n"
}

function warn() {
    printf "\033[1;33m[WARN] ${*}\033[0m\n"
}

function error() {
    printf "\033[1;31m[ERROR] ${*}\033[0m\n"
}

function error_exit() {
    printf "\033[1;31m[ERROR] ${*}\033[0m\n"
    exit 1
}

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

function failed()
{
    echo "$*" >&2
    exit 1
}

function mylog()
{
    #local prefixstr="service123"
    local prefixstr=${ME}
    echo "$*"
    logger "${prefixstr}" - "$*"
}

mylog service start
mylog warning! disk lost!

msgblue "hello world"
msgred "hello world"

info "info msg"
warn "warn msg"
error error msg
info I am at ${SCRIPT_PATH}
error_exit 789

echo "done"
