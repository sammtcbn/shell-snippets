#!/bin/bash
echo parameter from second is --- "${@:2}"

# Example:
# ./argv_except_first.bash 1 2 3 4 5 6 7
# parameter from second is --- 2 3 4 5 6 7
