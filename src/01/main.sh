#!/bin/bash

if ! [ $# -eq 1 ]; then
    echo Неправильное кол-во параметров
    exit
fi

if ! [[ $1 =~ ^[+-]?[0-9]+([.][0-9]+)?$ ]]; then
    echo "$1"
else
    echo Неверный параметр
fi
