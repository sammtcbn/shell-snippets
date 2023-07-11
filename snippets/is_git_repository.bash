#!/bin/bash
# refer to https://stackoverflow.com/questions/2180270/check-if-current-directory-is-a-git-repository
if git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
    echo current path is a git repository 
else
    echo current path is not a git repository
fi
