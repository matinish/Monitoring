#!/bin/bash

dir=$1
start=$(date)

source data.sh
source system.sh

IFS=""

if [ -d $1 ]; then
    echo $system
fi
