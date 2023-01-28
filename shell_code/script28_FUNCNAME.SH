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