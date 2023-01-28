#!/bin/bash

echo "Operation on Indexed arrays"
declare -a IND_ARR=( "C" "Linux" "Python" "Shell Scripting" "Ethical Hacking" )

echo ${#IND_ARR[@]}
echo ${#IND_ARR[*]}
echo ${!IND_ARR[@]}
unset IND_ARR[2]
echo ${!IND_ARR[@]}
echo ${IND_ARR[@]}
unset IND_ARR
echo ${IND_ARR[@]}

echo "Operation on Associative Array"
declare -A AS_ARR=( [name]="vikram" [profession]="figuring out" [clinet]="TMNA" )

echo ${#AS_ARR[@]}
echo ${#AS_ARR[*]}
echo ${!AS_ARR[@]}
unset AS_ARR[name]
echo ${!AS_ARR[@]}
echo ${AS_ARR[@]}
unset AS_ARR
echo ${AS_ARR[@]}