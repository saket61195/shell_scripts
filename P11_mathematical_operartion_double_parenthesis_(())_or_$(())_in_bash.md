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
((e++))
echo $e
f=$f=$((e+27))
echo $f

==================================================                                                                                                                                                           
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script9_mathematical_and_\(\(\)\)_\$\(\(\)\)_in_bash.sh
1+1
2
1
90
#############
12
8
20
5
100
26
27
28
55
--------------------------------------------------
#!/bin/bash

: '
f=$((17/3))
echo $f  
 
g=$(echo "scale=2;17/3" | bc)
echo $g  
 
q=2.7  
g=$(echo "$q+2.7" |bc)
echo $g  
'
((1+2))
=====================================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script10_bc_calulator.sh


note
: ' comment
multiline comment'

((1+2))
no error

-------------------------------------
  GNU nano 7.1                           script10_bc_calulator.sh                                     
#!/bin/bash

: '
f=$((17/3))
echo $f  
 
g=$(echo "scale=2;17/3" | bc)
echo $g  
 
q=2.7  
g=$(echo "$q+2.7" |bc)
echo $g  
'
$((1+2))

======================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script10_bc_calulator.sh
./script10_bc_calulator.sh: line 14: 3: command not found

$((1+2)) 
give  3: command not found
it means it evalute

----------------------------------------------------
#!/bin/bash

: '    
f=$((17/3))
echo $f

g=$(echo "scale=2;17/3" | bc)
echo $g

q=2.7  
g=$(echo "$q+2.7" |bc)
echo $g
'
b=$((1+2))
echo $b
((a=1+8))
echo $a
((c=a+66))
echo $c

=======================
                                                                                                      
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script10_bc_calulator.sh
3
9
75
------------------------------------
non-zero after evaluation = exit status is 0
zero after evaluation = exit status is 1

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ ((1+1))

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $echo $?
0
┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ ((1-1))

┌─[x][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $echo $?
1
------------------------------------------

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ ((a=1+1))

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ echo $?
0

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ ((a=1-1))

┌─[✘][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ echo $?
1
------------------------------------------
#!/bin/bash

((a=45))
if (( a > 1 ))
then
    echo "condition is true"
fi

if((21>3))
then
    echo "condition again true"
fi
======================================
                                                                
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script10_more_example.sh
condition is true
condition again true



