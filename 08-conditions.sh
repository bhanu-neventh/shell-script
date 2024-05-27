#!/bin/bash

NUM=$1
if [ $NUM -lt 100 ]
then
    echo "given number $NUM is less than 100"
else
    echo "given number $NUM is greatter than 100"
fi
