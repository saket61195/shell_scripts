
```shell
└──╼$  echo $HOSTNAME
saket-Aspire-A515-54G

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ echo $OSTYPE
linux-gnu

└──╼ $ echo $UID
1000
```

```shell
┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ echo $PS1
\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}` if [ $? = 0 ]; then echo "\[\033[00;32m\]\n\342\224\214\342\224\200[✔]${VIRTUAL_ENV:+($(basename $VIRTUAL_ENV))}\[[\033[01;36m\]\u\[\033[01;35m\]@\[\033[01;32m\]\h\[\033[00m\]:\[\033[00;32m\]]\342\224\200[\[\033[01;34m\]\w\[\033[00;32m\]]\$(git_prompt)\[\033[00m\]:\[\033[00;32m\]\n\[\033[00;32m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\e[01;33m\]\\$\[\e[00m\]"; else echo "\[\033[00;31m\]\n\342\224\214\342\224\200[✘]${VIRTUAL_ENV:+($(basename $VIRTUAL_ENV))}\[[\033[01;36m\]\u\[\033[01;35m\]@\[\033[01;32m\]\h\[\033[00m\]:\[\033[00;31m\]]\342\224\200[\[\033[01;34m\]\w\[\033[00;31m\]]\$(git_prompt)\[\033[00m\]:\[\033[00;31m\]\n\[\033[00;31m\]\342\224\224\342\224\200\342\224\200\342\225\274 \[\e[01;33m\]\\$\[\e[00m\]"; fi`
```

```
┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ echo $PS2
>

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ echo $PS3


┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ echo $PS4
+

┌─[✔][saket@saket-Aspire-A515-54G:]─[~]:
└──╼ $ 
```


---------------------------------KALI Linux
```shell
┌──(kali㉿kali)-[~]
└─$ echo $PS1   
%F{%(#.blue.green)}┌──${debian_chroot:+($debian_chroot)─}${VIRTUAL_ENV:+($(basename $VIRTUAL_ENV))─}(%B%F{%(#.red.blue)}%n㉿%m%b%F{%(#.blue.green)})-[%B%F{reset}%(6~.%-1~/…/%4~.%5~)%b%F{%(#.blue.green)}]
└─%B%(#.%F{red}#.%F{blue}$)%b%F{reset} 

┌──(kali㉿kali)-[~]
└─$ echo $PS2
%_> 
    
┌──(kali㉿kali)-[~]
└─$ echo $PS3
?# 

┌──(kali㉿kali)-[~]
└─$ echo $PS4
+%N:%i> 

```

```

PS2---------------------use \

└──╼ $ l\
> s\
> 
all ls output here 


$ PS2="\u: "

└──╼ $ \
saket: ls
 2022-10-16-14-50-29.051-VBoxSVC-31771.log   Music
 2023-01-03-17-03-22.040-VBoxSVC-9907.log    mysqldata
 account           
