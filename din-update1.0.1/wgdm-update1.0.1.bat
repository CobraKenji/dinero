rem CobraKenji
rem Feel free to donate 
rem BTC - 1HgPZvFRKuvsuLXwRtrLsJsws7ivZQScJt
rem DIN  DQ3Q59RHAD5T1reZGLXS5ernnZrNW3EJZ1

@echo off
title wgdm-update
color 7C
:start
cls
echo ##
echo Dinero masternode - update wallet to dinerocore v1.0.1.0
echo cobrakenji
echo DIN  DQ3Q59RHAD5T1reZGLXS5ernnZrNW3EJZ1
timeout /t 5

echo ##################################################
echo ##  Windows Dinero Masternode Update - 1.0.1.0  ##
echo ##################################################
echo ## 
echo ## You MUST install PuTTY from:
echo #######	https://putty.org/   ######
echo ##
echo ## This will connect to your VPS with your masternode
echo ## user then download the new wallet version 1.0.1.0.
echo ##
echo ## The script will then edit your crontab and restart
echo ## the masternode daemon. You will need to restart
echo ## your masternode alias at your updated local wallet
echo '## with the following command (after this update):'
echo ##
echo masternode start-alias YOUR_ALIAS
timeout /t 10
echo ##
echo ## Go to https://discord.gg/VHhNbuR for more help.
echo ##
set /p someone="## Enter VPS username: "
set /p nothing="## Enter VPS sudo password: "
set /p something="## Enter IP address of VPS: "

timeout /t 3
putty.exe -ssh %someone%@%something% -pw %nothing% -m update-masternode.txt -t
exit