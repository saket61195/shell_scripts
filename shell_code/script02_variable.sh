#!/bin/bash

VAR1=45
VAR2=APACHE
var3="this is good"
var4="79"
# always try to write in "" (double quote)

echo $VAR1 "this is ok"
echo $var3
echo $VAR2
echo $var4 + $VAR1

echo ${VAR1} this is ok
echo $VAR1this is ok
