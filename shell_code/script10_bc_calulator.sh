#!/bin/bash

: '
f=$((17/3))
echo $f

g=$(echo "scale=2;17/3" | bc)
echo $g

q=2.7
g=$(echo "$q+2.7" |bc)
echo $g
'
b=$((1+2))
echo $b
((a=1+8))
echo $a
((c=a+66))
echo $c
