#!/bin/bash
# refer to https://stackoverflow.com/questions/13210880/replace-one-substring-for-another-string-in-shell-script
first="I love Suzy and Mary"
second="Sara"
first=${first/Suzy/$second}
echo $first

# Result:
# $ ./replace_str.bash
# I love Sara and Mary
