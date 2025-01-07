#!/bin/bash

declare -A definitions

definitions=(
    [0x000001]="boot start"
    [0x000002]="verifying"
    [0x000003]="verified done"
    [0x000004]="boot done"
)

codes=(0x000001 0x000002 0x000003 0x000004 0x000005 0x123456)
for code in "${codes[@]}"; do
    if [[ -n "${definitions[$code]}" ]]; then
        printf "Code 0x%06X: %s\n" $code "${definitions[$code]}"
    else
        printf "Code 0x%06X: not found\n" $code
    fi
done

