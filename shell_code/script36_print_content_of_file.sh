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
    for lines_file2 in $(cat ${FILENAME2})
    do
        if [ ${lines_file1} == ${lines_file2} ]
        then
            echo "common line : ${lines_file1}"
        fi
    done
done
