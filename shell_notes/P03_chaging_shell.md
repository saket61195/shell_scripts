
--- my all shells list

┌──(kali㉿kali)-[~]
└─$ cat /etc/shells
```shell
# /etc/shells: valid login shells
/bin/sh
/bin/bash
/usr/bin/bash
/bin/rbash
/usr/bin/rbash
/bin/dash
/usr/bin/dash
/bin/zsh
/usr/bin/zsh
/usr/bin/tmux
/usr/bin/screen
/usr/bin/pwsh
/opt/microsoft/powershell/7/pwsh
/usr/bin/sh
```

```

--- to use any shell just type shell name
┌──(kali㉿kali)-[~]
└─$ pwsh
PowerShell 7.2.6
Copyright (c) Microsoft Corporation.

https://aka.ms/powershell
Type 'help' to get help.


┌──(kali㉿kali)-[/home/kali]
└─PS> 

---pwsh shell location
┌──(kali㉿kali)-[~]
└─$ which pwsh
/usr/bin/pwsh


---changing shell permanent
┌──(kali㉿kali)-[~]
└─$ chsh           
Password: 
Changing the login shell for kali
Enter the new value, or press ENTER for the default
        Login Shell [/usr/bin/zsh]: /usr/bin/pwsh

-----after logout
PowerShell 7.2.6
Copyright (c) Microsoft Corporation.

https://aka.ms/powershell
Type 'help' to get help.


┌──(kali㉿kali)-[/home/kali]
└─PS> 