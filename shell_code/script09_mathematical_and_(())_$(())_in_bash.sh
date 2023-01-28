#!/bin/bash

a1=1+1
echo $a1
#it will print 1+1
#in bash mathematical operation  can be done $(()) using this

a2=$((1+1))
b=$((3-2))
echo $a2
echo $b

c=1
d=$(($c+89))
echo $d

#some mathematical opertion
t1=$((10+2))
t2=$((10-2))
t3=$((10*2))
t4=$((10/2))
t5=$((10**2))
echo "#############"
echo $t1
echo $t2
echo $t3
echo $t4
echo $t5

#variable initialization
((e=26))
echo $e
((e++))
echo $e
((e++))
echo $e

f=$f=$((e+27))
echo $f



  