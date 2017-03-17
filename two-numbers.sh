#!/bin/bash
if [ $# -ne 2 ]
then
echo "Usage - $0 x y"
echo "Where x and y are 2 numbers for which I will print Sum"
exit 1
fi
echo "Sum of $1 and $2 is `expr $1 + $2`"

