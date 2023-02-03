┌──(kali㉿kali)-[~]
└─$ which whoami
/usr/bin/whoami


-------------

```shell
┌──(kali㉿kali)-[~]
└─$ locate whoami
/home/kali/.wine/drive_c/windows/system32/whoami.exe
/home/kali/.wine/drive_c/windows/syswow64/whoami.exe
/usr/bin/ldapwhoami
/usr/bin/whoami
/usr/lib/i386-linux-gnu/wine/i386-windows/whoami.exe
/usr/lib/python3/dist-packages/cme/modules/whoami.py
/usr/lib/python3/dist-packages/cme/modules/__pycache__/whoami.cpython-310.pyc
/usr/lib/x86_64-linux-gnu/wine/x86_64-windows/whoami.exe
/usr/share/bash-completion/completions/ldapwhoami
/usr/share/man/man1/ldapwhoami.1.gz
/usr/share/man/man1/whoami.1.gz
/usr/share/windows-resources/binaries/whoami.exe
/var/lib/veil/wine/drive_c/windows/system32/whoami.exe
```


-------------------

env and printenv both will print all environment variables

example of environment variables
```
┌──(kali㉿kali)-[~]
└─$ printenv
HOME=/home/kali
PATH=/home/kali/.rbenv/shims:/home/kali/.rbenv/bin:/home/kali/.pyenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/games:/usr/games:/home/kali/go/bin
PWD=/home/kali
USER=kali
```

----
```shell
┌──(kali㉿kali)-[~]
└─$  echo $PWD
/home/kali
┌──(kali㉿kali)-[~]
└─$  echo $USER       
kali
┌──(kali㉿kali)-[~]
└─$  echo $HOME
/home/kal
```
              
environment variable always in capital letter
whoami is not environment variable
but we can use it using export keyword

```bash
┌──(kali㉿kali)-[~]
└─$  export NAME="whoami"
     
┌──(kali㉿kali)-[~]
└─$  env | grep NAME     
LOGNAME=kali
NAME=whoami

┌──(kali㉿kali)-[~]
└─$  echo $NAME     
whoami

┌──(kali㉿kali)-[~]
└─$ $NAME
kali
```

bash and zsh are bit different to run command

```bash
$ ps -e | grep bash
   6134 pts/0    00:00:00 bash
  14479 pts/1    00:00:00 bash

┌──(kali㉿kali)-[~]
└─$ ps -e | grep zsh 
  14693 pts/0    00:00:01 zsh
  17393 pts/1    00:00:00 zsh
```


```bash
┌──(kali㉿kali)-[~]
└─$  pstree -s -p 14693
systemd(1)───qterminal(14690)───zsh(14693)


┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ pstree -s -p 6134
systemd(1)───systemd(1746)───gnome-shell(1944)───code-insiders(5913)───code-ins+

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ pstree -s -p 14479
systemd(1)───systemd(1746)───gnome-terminal-(14461)───bash(14479)───pstree(14933)


┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ export NAME="whoami"

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ $NAME
saket

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ $NAME
saket

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ unset NAME

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ $NAME

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ 
---------------------------
shell variable
┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ nameok="pwd"

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ $nameok
/home/saket
```

```
┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ set | nano -
CTRL + W AND FIND nameok

green_color='\[\033[00;32m\]'
nameok=pwd
red_color='\[\033[00;31m\]'
sky_color='\[[\033[01;36

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ set | grep nameok
nameok=pwd

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ unset nameok

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ $nameok
no output

---------------------------------------------

```


```
alias
┌──(kali㉿kali)-[~]
└─$ alias iam="whoami"

┌──(kali㉿kali)-[~]
└─$ iam
kali

┌──(kali㉿kali)-[~]
└─$ whoami      
kali
 
┌──(kali㉿kali)-[~]
└─$ unalias iam

┌──(kali㉿kali)-[~]
└─$ iam
Command 'iam' not found, did you mean:
```

```
note
source command is used to manually reload shell

source is a shell built-in command which is used to read and execute the content of a file(generally set of commands), passed as an argument in the current shell script.

to make permamnet environment varible put 
export key word and wrote into .bashrc
 export NAME="whoami"

 source .bashrc  // it is used to relaod the shell without closing the shell 
 then
 $NAME

 another way for make persistance
 nano /etc/environment
```