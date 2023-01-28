#!/bin/bash


# FILENAME=${1}
# IFS=$'\n'
# i=1

# for line in $(cat ${FILENAME})
# do
#     echo "line ${i} : ${line}"
#     ((i++))
# done

FILENAME1=${1}
FILENAME2=${2}
IFS=$'\n'

for lines_file1 in $(cat ${FILENAME1})
do
    echo "f1 : ${lines_file1}"
    for lines_file2 in $(cat ${FILENAME2})
    do
        echo "f2 : ${lines_file2}"

    done
done
