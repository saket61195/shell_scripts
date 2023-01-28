#!/bin/bash

#field splitting
#parameter expansion
#command substitution
#airthmatic expansion
#only work when use quotes " "

IFS=':@'
var1="ram:shyam:shoan@113komal:ravi"
echo ${var1}

for i in ${var1}
do
    echo "${i}"
done


echo "########"

echo $(echo "saket:prabhakr")
for i in $(echo "parinaz:shaida")
do
    echo "${i}"
done

