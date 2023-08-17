#!/bin/bash

sourcefn=append_file_in_file.1
echo aaaaaaaaaa > ${sourcefn}
echo bbbbbbbbbb >> ${sourcefn}

targetfn=append_file_in_file.txt
linenum=5
awk "NR==${linenum}{system(\"cat ${sourcefn}\")}1" ${targetfn} > ${targetfn}.new
mv ${targetfn}.new ${targetfn}
