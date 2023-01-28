#!/bin/bash

var=" this   is the first statement"

echo ${var}
echo "###########"

echo "${var}"
echo "###########"
echo "this is the \n great day"
echo "###########"
echo -E "this is \n default echo command"
echo "###########"
echo -e "this is \ngreat day"
echo "###########"
echo -n "great" # it will not terminate to new line
echo "############"
echo "not great"

