#!/bin/bash
fn=str_append_in_file.txt
linenum=5
awk "NR==${linenum}{print \"aaaaaaaa\"}1" ${fn} > ${fn}.new
mv ${fn}.new ${fn}
