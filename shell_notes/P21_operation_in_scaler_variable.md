
* Operations On Scalar Variables 

* ${VAR:ofst}
* ${VAR#ptm} 
* ${VAR%ptm} 
* ${VAR:-word} 
* ${VAR:?err msg} 
* ${VAR/ptm/replstr} 
* ${VAR//ptm/replstr} 
* ${VAR:ofst:len} 
* ${VAR##ptm} 
* ${VAR%%ptm} 
* ${VAR:+word} 
* ${VAR:=value} 
* ${#VAR} 
--------------------------------------------------
```
#!/bin/bash

#use {} curly braces to access variable for these operaion to work

var="Today is sunday"

echo ${var}

#to calculate length use (#) hash or pound sign

echo ${#var}

#to calculate substring use : (colon)

echo ${var:3}

#to skip first 2 charater and print till 5

echo ${var:3:7}

#to remove today from the string it is case sensative

echo ${var#Today}

#to remove T from the string 

echo ${var#T*}

#to remove the string from starting...to complete 

echo ${var##T*}

# to remove minimum match eg( sunday)
echo ${var%s*}

# to remove  mmattixum match (s sunday)
echo ${var%%s*}

echo ${var%sunday*}
echo ${var%%sunday*}

var="today is sunday oooo"

# only remove fist occurance of o
echo ${var/o/j}

# remove entire occurance of o
echo ${var//o/j}

var="today is sunday today"
echo ${var/today/tommorow}
echo ${var//today/tommorow}

#last occurance means suffix
echo ${var/%today/tommorow}

# first occurance means prefix
echo ${var/#today/tommorow}

var1="today is holiday"
echo ${var1:-cool}

#var2="today is holiday"
echo ${var2:-cool}

var3=""
echo ${var3:-cooling}
echo $var3

echo ${var4=monkey}
echo ${var4}

# append some value
var5="hii who"
echo ${var5:+world}
echo ${var5}
var6="this is exist"
echo ${var6:?does not exist}
echo "this is good"

echo ${var7:?does not exist}
echo "this is not good"

#for more info

#man bash | nano
#search parameter
================================================
                                                             
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ /bin/bash "/home/kali/Desktop/shell/script23_scare_variable_operation.sh"
Today is sunday
15
ay is sunday
ay is s
is sunday
oday is sunday

Today is
Today i
Today is
Today is
tjday is sunday oooo
tjday is sunday jjjj
tommorow is sunday today
tommorow is sunday tommorow
today is sunday tommorow
tommorow is sunday today
today is holiday
cool
cooling

monkey
monkey
world
hii who
this is exist
this is good
/home/kali/Desktop/shell/script23_scare_variable_operation.sh: line 81: var7: does not exist