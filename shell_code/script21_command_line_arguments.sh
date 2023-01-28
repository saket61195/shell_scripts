#!/bin/bash

echo $0
echo $1
echo $2
echo $3
echo $#
echo $*
echo $@

echo "####### "
for i in $*
do
	echo ${i}
done

echo "######### "
for i in $@
do 
        echo ${i}
done

echo "#########"

for i in "$*"
do 
        echo ${i}
done

echo "##############  "

for i in "$@"
do 
        echo ${i}
done



