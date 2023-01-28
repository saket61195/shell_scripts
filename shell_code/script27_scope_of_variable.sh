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