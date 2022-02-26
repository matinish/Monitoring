#!/bin/bash

source date.sh
source color.sh
source system.sh

IFS=""

if [ "$1" = "$2" ] || [ "$3" = "$4" ]; then
    echo Введены совпадающие значения
    echo Запустите скрипт повторно
elif [ $# != 4 ]; then
    echo Параметров должно быть четыре
else
    echo $system
fi
