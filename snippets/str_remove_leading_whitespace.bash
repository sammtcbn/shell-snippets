#!/bin/bash
echo "   123  456 7     89  "

# method 1 - use sed
echo "   123  456 7     89  " | sed 's/^[ \t]*//'

# method 2 - use perl
echo "   123  456 7     89  " | perl -pe 's/^\s+//'

# method 3 - use sed + regex + grep
echo "   123  456 7     89  " | sed 's/^[[:space:]]*//' | grep -v '^$'

# method 4 - awk
echo "   123  456 7     89  " | awk '{$1=$1; print}'
