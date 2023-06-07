#!/bin/bash
# refer to https://www.xmodulo.com/measure-elapsed-time-bash.html
start_time=$(date +%s)
sleep 6
end_time=$(date +%s)
elapsed=$(( end_time - start_time ))
echo elapsed time is ${elapsed} seconds
eval "echo Elapsed time: $(date -ud "@$elapsed" +'$((%s/3600/24)) days %H hr %M min %S sec')"
