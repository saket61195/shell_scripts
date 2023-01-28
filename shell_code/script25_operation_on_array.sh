#!/bin/bash

echo "Operation on Indexed arrays"
declare -a IND_ARR=( "C" "Linux" "Python" "Shell Scripting" "Ethical Hacking" )

echo ${#IND_ARR[3]}
echo ${IND_ARR[4]/i/o}
echo ${IND_ARR[4]//i/o}
echo ${IND_ARR[@]//i/ok}
IND_ARR+=("java" "perl")
echo ${IND_ARR[@]}
echo ${!IND_ARR[@]}
echo ${IND_ARR[@]:2}
echo ${IND_ARR[@]:2:2}

echo "Operation on Associative Array"
declare -A AS_ARR=( [name]="vikram" [role]="figuring out" [clinet]="TMNA" )

echo ${#AS_ARR[role]}
echo ${AS_ARR[role]//i/p}
echo ${AS_ARR[@]//i/ping}
AS_ARR+=([prof]="student" [hobby]="video")
echo ${AS_ARR[@]}
echo ${!AS_ARR[@]}

