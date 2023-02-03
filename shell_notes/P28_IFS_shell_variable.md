IFS = Internal Field Seprator
shell variable = list of charcter that is used for
- filed slitting during parameter expansion, command substitution and airthmatic expansion
-split lines into fields by read utility

example 1 -->
```
IFS=' ' 3
Frank Ross Kris

example 2 -->

Frank:Ross best:Kris
IFS=':'  3
IFS=' '  2
IFS=' :' 4
```
--------------------------------------------------------
```
┌─[✔][saket@saket-Aspire-A515-54G:]─[~/learning/shell_scripting]:
└──╼ $ set | grep IFS
IFS=$' \t\n'
    test -r "$1" && IFS='
    local ifs=$IFS IFS=: dir cmd="${1##*/}" compfile;
    IFS=$ifs;
    local option option2 i IFS=' 
    IFS=' 
        local IFS='
        local IFS='
        local IFS='
        local IFS='
    local IFS='
        local IFS='
    local IFS='
        IFS=' ';
        IFS='
        IFS=' ';
        IFS='
            IFS=' ';
            IFS='
    local IFS='
        IFS=' ';
        IFS='
    local configfile flag prefix="" ifs=$IFS;
        local IFS='
        IFS=$ifs;
                    local IFS=,;
                    IFS=$ifs;
        local line i=-1 ifs=$IFS;
        IFS='
        IFS=$ifs;
    local IFS=' 
                local IFS='
                    local IFS='
                    local IFS='
            local IFS='
        local IFS=' 
```
-------------------------------------------------------------

```
#!/bin/bash

#field splitting
#parameter expansion
#command substitution
#airthmatic expansion
#only work when use quotes " "

IFS=':'
var1="ram:shyam:shoan@113komal:ravi"
echo ${var1}
=====================================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script34_IFS.sh                            
ram shyam shoan@113komal ravi
```
----------------------------------------------

```
#!/bin/bash

#field splitting
#parameter expansion
#command substitution
#airthmatic expansion
#only work when use quotes " "

IFS=':@'
var1="ram:shyam:shoan@113komal:ravi"
echo ${var1}
=========================================

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script34_IFS.sh
ram shyam shoan 113komal ravi
```
----------------------------------------
```
#!/bin/bash

#field splitting
#parameter expansion
#command substitution
#airthmatic expansion
#only work when use quotes " "

IFS=':@'
var1="ram:shyam:shoan@113komal:ravi"
echo ${var1}

for i in ${var1}
do
    echo "${i}"
done
================================================================================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script34_IFS.sh       
ram shyam shoan 113komal ravi
ram
shyam
shoan
113komal
ravi
```
------------------------------------------
```
#!/bin/bash

#field splitting
#parameter expansion
#command substitution
#airthmatic expansion
#only work when use quotes " "

IFS=':@'
var1="ram:shyam:shoan@113komal:ravi"
echo ${var1}

for i in ${var1}
do
    echo "${i}"
done


echo "########"

echo $(echo "saket:prabhakr")
for i in $(echo "parinaz:shaida")
do
    echo "${i}"
done
=================================================================================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script34_IFS.sh
ram shyam shoan 113komal ravi
ram
shyam
shoan
113komal
ravi
########
saket prabhakr
parinaz
shaida
```
--------------------------------------------
```
#!/bin/bash

#field splitting
#parameter expansion
#command substitution
#airthmatic expansion
#only work when use quotes " "

IFS="@"
echo $*
echo $@
echo "$*"
echo "$@"
=================================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script35_IFS.sh sAKRT FKJGJ FJGJG KLKKLD
sAKRT FKJGJ FJGJG KLKKLD
sAKRT FKJGJ FJGJG KLKKLD
sAKRT@FKJGJ@FJGJG@KLKKLD
sAKRT FKJGJ FJGJG KLKKD
```
-------------------------------
```
#!/bin/bash

#field splitting
#parameter expansion
#command substitution
#airthmatic expansion
#only work when use quotes " "

# IFS="@"
IFS=$'\n'
echo $*
echo $@
echo "$*"
echo "$@"
===============================================================================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script35_IFS.sh sAKRT FKJGJ FJGJG KLKKLD
sAKRT FKJGJ FJGJG KLKKLD
sAKRT FKJGJ FJGJG KLKKLD
sAKRT
FKJGJ
FJGJG
KLKKLD
sAKRT FKJGJ FJGJG KLKKLD
```
-------------------------------


