#!/bin/bash
# copy from https://github.com/ownport/microk8s-snippets/blob/main/scripts/common.sh

# ====================================================
#   Colors for printing
# ----------------------------------------------------
RED='\033[1;31m'
BLUE='\033[0;36m'
NC='\033[0m' # No Color

# ====================================================
#   Common Functions
# ----------------------------------------------------
function info() {
    printf "${BLUE}[INFO] ${@}${NC}\n"
}

function error() {
    printf "${RED}[ERROR] ${@}${NC}\n"
}

# Print the error and exit with status code 1
function error_and_exit() {
    error ${@}
    exit 1
}

info "hello Sam"
error "hello Sam"
error_and_exit "Fatal 123"

echo bye
