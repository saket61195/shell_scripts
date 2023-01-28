#!/bin/bash

for i in file{1..3}
do
    for x in web{0..3}
    do
        echo "file is ${i}"
        echo "x is ${x}"
    done
done

