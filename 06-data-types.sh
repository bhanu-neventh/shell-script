#!/bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))

echo "TOTAL :: $SUM"

echo "how many args passed :: $#"

echo "All args passed :: $@"

echo "Script name :: $0"


echo "status :: $?"

