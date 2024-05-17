param (
    [string]$ShortcutName = "",
    [string]$ShortcutURL = ""
 )

 
$new_object = New-Object -ComObject WScript.Shell
$destination = $new_object.SpecialFolders.Item("AllUsersDesktop")
$source_path = Join-Path -Path $destination -ChildPath "\\$shortcutName.url"
$source = $new_object.CreateShortcut($source_path)
$source.TargetPath = "$ShortcutURL"
$source.Save()