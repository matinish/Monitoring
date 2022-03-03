#!/bin/bash

IFS=""

dir=$1
start=$(date)

source data.sh
source system.sh


if [ -d $1 ]; then
    echo $system
fi
