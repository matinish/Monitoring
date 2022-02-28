#!/bin/bash

folders="$(ls -l $dir 2>/dev/null | grep "d" | wc | awk '{print $1}')"
topfol="$(sudo du -h $dir | sort -nr | head -5 | awk '{print "- " $2 ", " $1}' | cat -n)"
files="$(sudo find $dir -type f | wc -l)"