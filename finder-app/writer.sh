#!/bin/sh
if [ $# -lt 2 ]
then
    echo "Argument missing"
    exit 1
    fi

echo $2 > $1
if [ $? -eq 0 ]
then
exit
else
echo "error"
exit 1
fi