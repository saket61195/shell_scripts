```
$ ps -e | grep bash
   6134 pts/0    00:00:00 bash

$ pstree -s -p 6134
systemd(1)───systemd(1746)───gnome-shell(1944)───code-insiders(5913)───code+
```
>note:---->
>Bash is the shell, or command language interpreter, for the GNU operating system.


list the all shell
```
 $ cat /etc/shells
# /etc/shells: valid login shells
/bin/sh
/bin/bash
/usr/bin/bash
/bin/rbash
/usr/bin/rbash
/bin/dash
/usr/bin/dash
/usr/bin/sh
```

```
--- defalt bash
$ echo $0
/usr/bin/bash

--default shell
echo $SHELL
/bin/bash

--default bash
echo $BASH
/usr/bin/bash

--default bash
$ cat /etc/passwd
saket:x:1000:1000:saket,,,:/home/saket:/bin/bash

--default bash
 $ which bash
/usr/bin/bash

--traditionally it was found

 $ which -a bash
/usr/bin/bash
/bin/bash

----both are same
 $ ls -li /bin/bash /usr/bin/bash
1049870 -rwxr-xr-x 1 root root 1396520 Jan  6  2022 /bin/bash
1049870 -rwxr-xr-x 1 root root 1396520 Jan  6  2022 /usr/bin/bash

----to know all bashrc file
 $ ls -la | grep .bashrc
-rw-r--r--  1 saket saket   7706 Jan  6 19:18 .bashrc
-rw-r--r--  1 saket saket   7140 Nov 23  2021 .bashrc.save
-rw-rw-r--  1 saket saket  13383 Oct 16 21:55 envbashrc.txt
```