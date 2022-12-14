#!/bin/bash
# note - ${array[@]:first:length}

echo all argument is $@

echo argument cnt is $#

echo argument 0 is $0

echo argument 1 is $1

echo show all argument starting from the third elements
for i in "${@:3}"
do
  echo $i
done

echo show all argument starting from the 4th elements , show 3 elements
variable=${@:4:3}
echo ${variable}

# Result:
: <<'END'
$ ./argument_ex.bash 1 2 3 4 5 6 7 8 9
all argument is 1 2 3 4 5 6 7 8 9
argument cnt is 9
argument 0 is ./argument_ex.bash
argument 1 is 1
show all argument starting from the third elements
3
4
5
6
7
8
9
show all argument starting from the 4th elements , show 3 elements
4 5 6
END
