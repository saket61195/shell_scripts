```
0 -> successfully (true)

1-255 -> unsuccessfully (false)

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ echo "hello"
hello

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ echo $?
0
-----------------------------------
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ apayr4
apayr4: command not found

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ echo $?                                                                       
127
---------------------------------------

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ls -e
ls: invalid option -- 'e'
Try 'ls --help' for more information.

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ echo $?                                                                        
2

----------------------------------------------------

nano script7.sh

  GNU nano 7.1                                                                               script7_exit_status_code.sh                                                                                         
#!/bin/bash

echo "line above exit  command will execute"

exit

pwd
ls 
echo "line below exit  command will not execute"


==========================================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script7_exit_status_code.sh 
line above exit  command will execute

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ echo $?
0
------------------------------------------
nano script7.sh


#!/bin/bash

echo "line above exit  command will execute"

exit  4

pwd
ls 
echo "line below exit  command will not execute"

==================================================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script7_exit_status_code.sh 
line above exit  command will execute

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ echo $?
4
-----------------------------------------------------------
nano script7.sh


#!/bin/bash

echo "line above exit  command will execute"

exit  256

pwd
ls 
echo "line below exit  command will not execute"
==============================================

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script7_exit_status_code.sh 
line above exit  command will execute

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ echo $?
0

------------------------------------------------------
nano script7.sh


#!/bin/bash

echo "line above exit  command will execute"

exit  257

pwd
ls 
echo "line below exit  command will not execute"
===============================================
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script7_exit_status_code.sh 
line above exit  command will execute

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ echo $?
1
-------------------------
after 255 it will loop like 256=0 257=1 and so on ...

```