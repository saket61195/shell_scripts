```
awk -F ':' '{print $1,$6}' /etc/passwd
```

```
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ awk -F ':' '$1=="user1" {print $1,$6}' /etc/passwd 
user1 /home/user1

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ awk -F ':' '$1=="user2" {print $1,$6}' /etc/passwd
user2 /home/user2

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ awk -F ':' '$1=="user4" {print $1,$6}' /etc/passwd
user4 /home/user4

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ awk -F ':' '$1=="user5" {print $1,$6}' /etc/passwd
  
```
----------------------------------------------------------
```
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ sudo tar -czvf user2.tar.gz /home/user2
-------------------------------------------
┌──(kali㉿kali)-[~/Desktop/shell]
└─$ dirname dir1/dir2/dir3                 
dir1/dir2

┌──(kali㉿kali)-[~/Desktop/shell]
└─$ basename dir1/dir2/dir3
dir3    
```
------------------------------------------------------------
```
tar  -Pczf ${TO_PATH}/${USER}.tar.gz  /home/${BASE}

P is used to resolve
tar: Removing leading `/' from member names
```
---------------------------------------------
```
┌──(kali㉿kali)-[~]
└─$ ps -u kali      
    PID TTY          TIME CMD
1247 ?        00:00:00 systemd
   1249 ?        00:00:00 (sd-pam)
   1264 ?        00:00:00 pipewire
   1265 ?        00:00:00 pipewire-media-
   1266 ?        00:00:00 pulseaudio
```
---------------------------------------------
```
┌──(kali㉿kali)-[~]
└─$ ps -u kali -o user,pid,ppid,cmd,%mem,%cpu
USER         PID    PPID CMD                         %MEM %CPU
kali        1247       1 /lib/systemd/systemd --user  0.4  0.0
kali        1249    1247 (sd-pam)                     0.1  0.0
kali        1264    1247 /usr/bin/pipewire            0.3  0.0
kali        1265    1247 /usr/bin/pipewire-media-ses  0.2  0.0
kali        1266    1247 /usr/bin/pulseaudio --daemo  1.3  0.0
kali        1268    1247 /usr/bin/gnome-keyring-daem  0.4  0.0
..............................................................
```
---------------------------------------------------------------
```
┌──(kali㉿kali)-[~]
└─$ ps -u kali -o user,pid,ppid,cmd,%mem,%cpu --sort %mem
USER         PID    PPID CMD                         %MEM %CPU
kali        1351       1 /usr/bin/VBoxClient --clipb  0.0  0.0
kali        1364       1 /usr/bin/VBoxClient --seaml  0.0  0.0
kali        1370       1 /usr/bin/VBoxClient --draga  0.0  0.0
kali        1378       1 /usr/bin/VBoxClient --vmsvg  0.0  0.0
kali        1382    1276 /usr/bin/ssh-agent x-sessio  0.0  0.0
kali        1365    1364 /usr/bin/VBoxClient --seaml  0.0  0.0
kali        1372    1370 /usr/bin/VBoxClient --draga  0.1  0.3
kali        1249    1247 (sd-pam)                     0.1  0.0
kali        1379    1378 /usr/bin/VBoxClient --vmsvg  0.1  0.0
kali        1554       1 xcape -e Super_L Control_L   0.1  0.0
..................................................
```
--------------------------------------------------------

```
┌──(kali㉿kali)-[~]
└─$ ps -u kali -o user,pid,ppid,cmd,%mem,%cpu --sort -%mem
USER         PID    PPID CMD                         %MEM %CPU
kali        1421    1276 xfwm4                        4.1  0.4
kali        1851       1 /usr/bin/qterminal           4.0  0.3
kali        1466    1276 xfdesktop                    2.2  0.0
kali        1572    1276 /usr/bin/python3 /usr/bin/b  2.0  0.0
kali        1622    1276 nm-applet                    1.9  0.0
kali        1467    1457 /usr/lib/x86_64-linux-gnu/x  1.9  0.0
kali        1457    1276 xfce4-panel                  1.8  0.0
kali        1477    1457 /usr/lib/x86_64-linux-gnu/x  1.7  0.0
kali        1475    1457 /usr/lib/x86_64-linux-gnu/x  1.7  0.1
kali        1479    1457 /usr/lib/x86_64-linux-gnu/x  1.6  0.0
kali        1476    1457 /usr/lib/x86_64-linux-gnu/x  1.6  0.0
kali        1614    1276 /usr/bin/python3 /usr/share  1.3  0.0
kali        1266    1247 /usr/bin/pulseaudio --daemo  1.3  0.0
kali        1472    1457 /usr/lib/x86_64-linux-gnu/x  1.3  0.4
kali        1474    1457 /usr/lib/x86_64-linux-gnu/x  1.1  0.3
..............................................................
```
---------------------------------------------------------------
```
┌──(user2㉿kali)-[~]
└─$ sleep 4000 &
[1] 13688

┌──(user2㉿kali)-[~]
└─$ find / -name abc.txt
find: ‘/home/user1’: Permission denied

┌──(kali㉿kali)-[~]
└─$ ps -u user2 -o user,pid,ppid,cmd,%mem,%cpu --sort -%mem
USER         PID    PPID CMD                         %MEM %CPU
user2      13552   13527 -bash                        0.1  0.0
user2      14564   13552 find / -name abc.txt         0.1 99.0
user2      13688   13552 sleep 4000                   0.0  0.0   
```
