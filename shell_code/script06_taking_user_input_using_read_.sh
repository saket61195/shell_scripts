#!/bin/bash

read
STATUS=$(systemctl status ${REPLY} | awk  "NR==3 {print $2}")

echo ${REPLY} "IS"  ${STATUS}

echo "##############"


read SERVICE
STATUS=$(systemctl status ${SERVICE} | awk  "NR==3 {print $2}")

echo ${SERVICE} "IS"  ${STATUS}

echo "#########"

read -p "enter service_name " SERVICE
STATUS=$(systemctl status ${SERVICE} | awk  "NR==3 {print $2}")

echo ${SERVICE} "IS"  ${STATUS}

read -d ':' -p "enter sentence and press ':' to terminate "  test
echo ${test}


read -s -p "enter sentence  "  test1
echo $test1

# -s used to hide the sentence while typing once you finish typing and press enter it willl show
unset SERVICE
echo $SERVICE
var="i am not ok"
readonly var
echo ${var}
var="i am ok"
echo "var"
# you cannot unset readonly variable

