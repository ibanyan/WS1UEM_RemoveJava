$JavaInstalled = (Get-WmiObject Win32_Product -Filter 'name like "java%"')
if ($JavaInstalled -ne $null)
{
}
else
{
exit
}(Get-WmiObject Win32_Product -Filter 'name like "java%"').Uninstall()