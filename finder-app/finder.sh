#!/bin/sh
if [ $# -lt 2 ]
then
    echo "Argument missing"
    exit 1
    fi

numfiles=$( ls $1 | wc -l )
numlines=$( grep -r "$2" "$1" | wc -l)
if [ -d "$1" ]
then
    echo The number of files are $numfiles and the number of matching lines are $numlines
else
    echo "not a directory"
    exit 1
    fi
