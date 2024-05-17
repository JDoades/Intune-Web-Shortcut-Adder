param (
    [string]$ShortcutName = ""
 )

Remove-Item "C:\users\public\desktop\$ShortcutName.url"
