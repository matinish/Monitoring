#!/bin/bash

source data.sh
source system.sh

IFS=""

dir=$1

if [ -d $1 ]; then
    echo $system
fi
