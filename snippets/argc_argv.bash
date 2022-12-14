#!/bin/bash

argc=$#

echo argc is ${argc}

for argv in "$@"
do
    echo argv - "$argv"
done

# Result:
# $ ./argc_argv.bash  1 2 3
# argc is 3
# argv - 1
# argv - 2
# argv - 3
