#!/bin/bash

folders="$(ls -l $dir 2>/dev/null | grep "d" | wc | awk '{print $1}')"
topfol="$(du -h $dir | sort -nr | head -5 | awk '{print "- " $2 ", " $1}' | cat -n)"
files="$(find $dir -type f | wc -l)"
config="$(find $dir -name "*.conf" | wc -l)"
text="$(find $dir -name "*.txt" | wc -l)"
exe="$(find $dir -type f -executable | wc -l)"
log="$(find $dir -name "*.log" | wc -l)"
archive="$(find $dir -name "*.rar" -name "*.zip" | wc -l)"
sym="$(find $dir -type l | wc -l)"
topfile="$(find $dir -type f -exec du -h {} + | sort -nr | head -10 | awk '{print "- " $2 ", " $1}' | cat -n)"
#type="$(file *)"
#topexe="$()"
