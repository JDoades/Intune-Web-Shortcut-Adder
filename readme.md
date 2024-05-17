Go to 
1. intune 
2. Apps
3. Windows Apps
4. Add an App
5. Windows 32 app

Upload the add.intunewim file

Rename the app to the name of the shortcut (this is purely decoration, but it makes life easier for later on)

In the publisher field, add your initials, and then @ Company Name. So for example
JD @ Actrand

In the version field, put 
1


In the install command put the following (but change the purple mash and shortcuturl to where you want it to go to) (don't include the back ticks...)

```

powershell.exe -executionpolicy Bypass -file add.ps1 -ShortcutName "Google" -ShortcutURL "https://google.com"`


```


in the uninstall command, put the following (but change it to match you put in the install command!!!) <-- THIS IS IMPORTANT. IT MUST MATCH!!!

```

powershell.exe -executionpolicy Bypass -file remove.ps1 -ShortcutName "Google"


```



Click next

Operating system architecture - pick both x86 & x64
Minimum operating system - pick the oldest one, at the moment that is Windows 10 1607


Detection rules - pick "custom"

Path
```
c:\users\public\desktop

```

File or folder
Google.url
(or whatever you named the shortcut above with .url at the end of it)

Detection Method File or Folder Exists

smash next, until you get to the deployment group page - pick whatever group

