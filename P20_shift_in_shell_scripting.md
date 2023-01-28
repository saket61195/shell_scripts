
shift 1 example

#!/bin/bash

echo $1
echo $2
echo $3
echo $4
echo $5
echo $6
shift 1
echo "##########"
echo $1
echo $2
echo $3
echo $4
echo $5
echo $6
===================================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script22_shift_keyword.sh hello who are you here ha
hello
who
are
you
here
ha
##########
who
are
you
here
ha
------------------------------------------------------

shift 2 example


#!/bin/bash

echo $1
echo $2
echo $3
echo $4
echo $5
echo $6
shift 2
echo "##########"
echo $1
echo $2
echo $3
echo $4
echo $5
echo $6
================================================================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script22_shift_keyword.sh hello who are you here ha
hello
who
are
you
here
ha
##########
are
you
here
ha
------------------------------------------
shift 3 example

#!/bin/bash

echo $1
echo $2
echo $3
echo $4
echo $5
echo $6
shift 3
echo "##########"
echo $1
echo $2
echo $3
echo $4
echo $5
echo $6
====================================================

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script22_shift_keyword.sh hello who are you here ha
hello
who
are
you
here
ha
##########
you
here
ha

if we add more argument in command then it will print according
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script22_shift_keyword.sh hello who are you here ha what happen
                                $1     $2  $3  $4  $5  $6  

shift 3 meeans(it will start from $4)
                                                $1  $2  $3   $4  $5 
hello
who
are
you
here
ha
##########
you
here
ha
what
happen


--------------------------------------

