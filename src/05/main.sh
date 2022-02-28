#!/bin/bash

source date.sh
source system.sh

IFS=""

dir=$1

if [ -d $1 ]; then
    echo $system
fi
