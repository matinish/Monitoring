#!/bin/bash

folders="$(ls -l $dir 2>/dev/null | grep "d" | wc | awk '{print $1}')"
topfol="$(du -h $dir 2>/dev/null | sort -nr | head -5 | awk '{print "- " $2 ", " $1}' | cat -n)"
files="$(find $dir -type f 2>/dev/null | wc -l)"
config="$(find $dir -name "*.conf" 2>/dev/null | wc -l)"
text="$(find $dir -name "*.txt" 2>/dev/null | wc -l)"
exe="$(find $dir -type f -executable 2>/dev/null | wc -l)"
log="$(find $dir -name "*.log" 2>/dev/null | wc -l)"
archive="$(find $dir -name "*.rar" -name "*.zip" 2>/dev/null | wc -l)"
sym="$(find $dir -type l 2>/dev/null | wc -l)"
topfile="$(find $dir -type f -exec du -Sh {} + 2>/dev/null | sort -hr | head -10 |
    awk '{printf "%s - %s, %s, ", NR, $2, $1}{split($2,a,"."); print a[length(a)]}')"
filename="$(find $dir -type f -executable -exec du -Sh {} + 2>/dev/null | sort -hr | head -10 | awk '{print $2}')"
filesize=$(find $dir -type f -executable -exec du -Sh {} + 2>/dev/null | sort -hr | head -10 | awk '{print $1}')
topexe="$(find $dir -type f -executable -exec du -Sh {} + 2>/dev/null | sort -hr | head -10 | md5sum ${filename} | awk '{print "- " $2 ", " $1 ", "}' | cat -n)"
