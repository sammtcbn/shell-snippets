#!/bin/bash
# refer to https://www.xmodulo.com/measure-elapsed-time-bash.html
start_time=$(date +%s)
date '+%Y-%m-%d %H:%M:%S' -d @$start_time

sleep 6

end_time=$(date +%s)
date '+%Y-%m-%d %H:%M:%S' -d @$end_time

elapsed=$(( end_time - start_time ))

echo start_time is ${start_time}
echo end_time is ${end_time}
echo elapsed time is ${elapsed} seconds
eval "echo Elapsed time: $(date -ud "@$elapsed" +'$((%s/3600/24)) days %H hr %M min %S sec')"
