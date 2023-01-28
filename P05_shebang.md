* use of shebang (#!)
* path for execution (./)
----------------------

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ /bin/cat ./script.sh 
#!/bin/cat

this is awsome

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script.sh 
#!/bin/cat

this is awsome

----------------------------------------------

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ /bin/cat ./script.sh 
#!/bin/ls

this is awsome

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ /bin/ls ./script.sh 
./script.sh

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script.sh
./script.sh

 -------------------------------------

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ cat script.sh 
#!/bin/nano

this is awsome


┌──(kali㉿kali)-[~/Desktop/shell]
└─$ /bin/nano script.sh 

this script will open nano editor

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script.sh

this script will also now open nano

-------------------------------

#!/bin/bash   due to bash it is callled bash scripting

nano script.sh

  GNU nano 7.1            script.sh                      
#!/bin/bash

ls
echo "this is awsome"

──(kali㉿kali)-[~/Desktop/shell]
└─$ /bin/bash script.sh 
file10.txt  file2.txt  file4.txt
file1.txt   file3.txt  script.sh
this is awsome

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script.sh
file10.txt  file2.txt  file4.txt
file1.txt   file3.txt  script.sh
this is awsome

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ /bin/bash ./script.sh 
file10.txt  file2.txt  file4.txt
file1.txt   file3.txt  script.sh
this is awsome

./ represent current folder so it is not neccessory to write when we wrote /bin/bash or /bin/ls or any becuase file ececuted throurh bin

note:
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ script.sh           
script.sh: command not found

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script.sh 
file10.txt  file2.txt  file4.txt  typescript
file1.txt   file3.txt  script.sh
this is awsome

./ represent path so when we want to execute script we will use ./

┌──(kali㉿kali)-[~/Desktop]
└─$ shell/script.sh
kali.txt  shell
this is awsome

┌──(kali㉿kali)-[~/Desktop]
└─$ cat shell/script.sh 
#!/bin/bash

ls
echo "this is awsome"

┌──(kali㉿kali)-[~/Desktop]
└─$ ls
kali.txt  shell



----------------------------
┌──(kali㉿kali)-[~/Desktop]
└─$ echo $PATH
/home/kali/.rbenv/shims:/home/kali/.rbenv/bin:/home/kali/.rbenv/shims:/home/kali/.rbenv/bin:/home/kali/.pyenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/games:/usr/games:/home/kali/go/bin:/home/kali/go/bin

┌──(kali㉿kali)-[~/Desktop]
└─$ ls
kali.txt  shell


┌──(kali㉿kali)-[~/Desktop]
└─$ /bin/ls
kali.txt  shell

it is due to PATH /bin is already present in the PATH
-----------------------------------------------------------------------

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script2.sh
file10.txt  file2.txt  file4.txt   script.sh
file1.txt   file3.txt  script2.sh  typescript
-rwx------ 1 kali kali 38 Jan 24 00:27 script.sh

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ cd ..

┌──(kali㉿kali)-[~/Desktop]
└─$ shell/script2.sh
kali.txt  shell
ls: cannot access 'script.sh': No such file or directory


┌──(kali㉿kali)-[~/Desktop]
└─$ ls
kali.txt  shell

in Desktop directory no script.sh present


























