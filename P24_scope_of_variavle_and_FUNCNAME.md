#!/bin/bash

var="user1"   #global varible

function xyz(){
    echo ${var}
    echo "inside fun"
    local var="userlocal"  #local variable
    echo ${var}

}
xyz
echo ${var}
==============================
                                                                                    
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script27_scope_of_variable.sh
user1
inside fun
userlocal
user1
------------------------------------------

#!/bin/bash

function fun1() {
    echo "inside fun1"
    echo ${FUNCNAME[0]}
    echo ${FUNCNAME[1]}
    fun2
    echo "fun1 ended"
}

function fun2() {
    echo "inside fun2"
    echo ${FUNCNAME[0]}
    echo ${FUNCNAME[1]}
    echo ${FUNCNAME[2]}
    echo "fun2 ended"
}
fun1
=============================================
                                                                                    
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script28_FUNCNAME.SH
inside fun1
fun1
main
inside fun2
fun2
fun1
main
fun2 ended
fun1 ended
            