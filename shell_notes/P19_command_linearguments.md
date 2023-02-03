```
#!/bin/bash

echo $1
echo $2
echo $3

==================

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script21_command_line_arguments.sh hello who are 
hello
who
are
--------------------------------------

#!/bin/bash

echo $1
echo $2
echo $3
echo $#
echo $*
echo $@

=====================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script21_command_line_arguments.sh hello "who are you" kali 
hello
who are you
kali
3
hello who are you kali
hello who are you kali
---------------------------------------------


#!/bin/bash

echo $0
echo $1
echo $2
echo $3
echo $#
echo $*
echo $@

echo "####### "
for i in $*
do
        echo ${i}
done

echo "######### "
for i in $@
do 
        echo ${i}
done

echo "#########"

for i in "$*"
do 
        echo ${i}
done

echo "##############  "

for i in "$@"
do 
        echo ${i}
done
==========================================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script21_command_line_arguments.sh hello "who are you" kali 
./script21_command_line_arguments.sh
hello
who are you
kali
3
hello who are you kali
hello who are you kali
####### 
hello
who
are
you
kali
######### 
hello
who
are
you
kali
#########
hello who are you kali
##############  
hello
who are you
kali
-----------------------------------------
note:
./script21_command_line_arguments.sh hello "who are you" kali 

when
for i in $*   (loop five times)(hello who are you kali)
for i in $@   (loop five times)(hello who are you kali)
i.e no differnce when using without quotes


for i in "$*"  (loop one times)("hello who are you kali")
for i in "$@"   (loop three times)(hello "who are you" kali)

