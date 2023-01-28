#!/bin/bash

function add() {
    echo "inside add function"
    echo "$1 + $2"
    ((sum = $1 + $2))
    echo ${sum}
    echo "number of arguement is $#"
    for i in "$@"
    do
        echo "${i}"
    done
    sub()
    {
        echo "hello"
    }
    sub
    echo "name of the function is ${FUNCNAME[0]}"
    echo "name of the function is ${FUNCNAME[1]}"
    return 0
    # return keyword is not use to return any value it just return status code $?
    echo "ok"
    #ok will not print because after return keyword nothing will print

}

add 4 3 7 8 9
echo $?
