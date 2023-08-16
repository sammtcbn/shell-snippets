#!/bin/bash
awk '/mno/{ print NR; exit }' str_line_number_in_file.txt
