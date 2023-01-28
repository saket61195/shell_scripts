#!/bin/bash

function add()
{
    echo "inside add function"
}
function sub()
{
    echo "inside sub fuction"
}
add
sub
==========================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script26_function.sh
inside add function
inside sub fuction
-------------------------------------

#!/bin/bash

function add() {
    echo "inside add function"
    echo "$1 + $2"
    ((sum = $1 + $2))
    echo ${sum}
     echo "number of arguement is $#"
}
function sub() {
    echo "inside sub fuction"
    echo "$1 - $2"
    ((sub = $1 - $2))
    echo ${sub}
     echo "number of arguement is $#"
}
add 4 3
sub 16 2
====================================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script26_function.sh
inside add function
4 + 3
7
number of arguement is 2
inside sub fuction
16 - 2
14
number of arguement is 2
------------------------------------------------

#!/bin/bash

function add() {
    echo "inside add function"
    echo "$1 + $2"
    ((sum = $1 + $2))
    echo ${sum}
    for i in "$@"
    do
        echo "${i}"
    done
}

add 4 3
===============================

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script26_function.sh
inside add function
4 + 3
7
4
3
------------------------------

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
}

add 4 3 7 8 9
==================================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script26_function.sh
inside add function
4 + 3
7
number of arguement is 5
4
3
7
8
9
----------------------------

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

}

add 4 3 7 8 9
============================================
                                                                                                                                                   
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script26_function.sh
inside add function
4 + 3
7
number of arguement is 5
4
3
7
8
9
hello
name of the function is add
name of the function is main
-------------------------------------------
