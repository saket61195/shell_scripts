varibale name can be alphbet and number and underscore but don't start with number

a-zA-Z0-9_

var=45
VAR1=apache
var2="this is good"
or
var2='this is good'

we cannot write 
var= this is good 
becauase it contain white space 


NOTE: no space should be there between variable name,
eaqual to (=) and varible name
i.e 
var =ace  -> invalid
var= ace  -> invalid
var = ace  -> invalid

var=ace -> valid

--------------------------------
nano script.sh
===================================
#!/bin/bash

VAR1=45
VAR2=APACHE
var3="this is good"
var4="79"
# always try to write in "" (double quote)

echo $VAR1 "this is ok"
echo $var3
echo $VAR2
echo $var4 + $VAR1

echo ${VAR1} this is ok
echo $VAR1this is ok


===============================================
└─$ ./script5.sh 
45 this is ok
this is good
APACHE
79 + 45
45 this is ok
is ok
========================
NOTE
$VAR1this assume that this is variable

----------------------------------
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ls
file10.txt  file2.txt  file4.txt   script5.sh  typescript
file1.txt   file3.txt  script2.sh  script.sh


========================================
nano script6.sh

#!/bin/bash

var="file*"

echo "${var}"
# echo "file*"

echo $var
#echo  file*

ls "${var}"
#ls "file*"

ls $var
#ls file*
================================================
                                                       
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script6.sh       
file*
file10.txt file1.txt file2.txt file3.txt file4.txt
ls: cannot access 'file*': No such file or directory
file10.txt  file1.txt  file2.txt  file3.txt  file4.txt

---------------------------------------------------------
nano script7.sh
           
#!/bin/bash

var="file1.txt file2.txt"

ls -l "${var}"
#ls -l  "file1.txt file2.txt"

ls -l ${var}
#ls - l file1.txt file2.txt



┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script7.sh 
ls: cannot access 'file1.txt file2.txt': No such file or directory
-rw-r--r-- 1 kali kali 60 Jan 23 14:33 file1.txt
-rw-r--r-- 1 kali kali  0 Jan 23 14:25 file2.txt


----------------------------------------

nanos  cript5.sh              
#!/bin/bash

var=`ls -ls`
SERVICE=$(systemctl status apache2)

echo $var
echo $SERVICE
============================

total 48 4 -rw-r--r-- 1 kali kali 13 Jan 23 14:31 file10.txt 4 -rw-r--r-- 1 kali kali 60 Jan 23 14:33 file1.txt 0 -rw-r--r-- 1 kali kali 0 Jan 23 14:25 file2.txt 0 -rw-r--r-- 1 kali kali 0 Jan 23 14:25 file3.txt 0 -rw-r--r-- 1 kali kali 0 Jan 23 14:25 file4.txt 4 -rwx------ 1 kali kali 38 Jan 24 00:27 script1.sh 4 -rwxr-xr-x 1 kali kali 33 Jan 24 00:46 script2.sh 4 -rwxr-xr-x 1 kali kali 218 Jan 24 01:07 script3.sh 4 -rwxr-xr-x 1 kali kali 128 Jan 24 01:21 script4.sh 4 -rwxr-xr-x 1 kali kali 88 Jan 24 01:28 script5.sh 20 -rw-r--r-- 1 kali kali 20480 Jan 24 01:22 typescript
○ apache2.service - The Apache HTTP Server Loaded: loaded (/lib/systemd/system/apache2.service; disabled; preset: disabled) Active: inactive (dead) Docs: https://httpd.apache.org/docs/2.4/

----------------------------------------------------
nano script6.sh

#!/bin/bash

SERVICE="apache2"
STATUS=$(systemctl status $SERVICE | awk  "NR==3 {print $2}")

echo ${SERVICE} "IS"  ${STATUS} 
echo ${USER}



=========================

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ ./script6.sh
apache2 IS Active: inactive (dead)
kali
--------------------------------------






