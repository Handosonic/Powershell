@echo ==================================================================
@echo off  
echo ********************Zapata Script file***  version 3.2 ***********************

@ echo.  
echo Flash Disk nii Vsgee oryyl (E , F , G , M) ?: 
set /p CC= 
echo ERP 6.0 Xyylax vsgee oryyl Local Hard Disk (D, F , G ) ?:
set /p DD=
@echo domaind holbox
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%CC%:\Final\INSTALL\name.ps1""' -Verb RunAs}"
@echo Domaind xolbogdtson bol yamar neg towchlyyr darj tsaash yawna yy?
pause
@ echo.
@ echo Real-time protector disabled
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%CC%:\Final\INSTALL\scriptdisable.ps1""' -Verb RunAs}"

@echo Firewall off xiij bna 
Advfirewall set allprofiles state off
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%CC%:\Final\INSTALL\firewall.ps1""' -Verb RunAs}"

@echo Netfx3 syylgaj bna
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%CC%:\Final\INSTALL\netfx3.ps1""' -Verb RunAs}"

xcopy "%CC%:\Final\ERP" "%DD%:"  /Y /H /E /F /I
start PowerShell.exe -executionpolicy remotesigned -File "%CC%:\Final\INSTALL\short.ps1"
rem PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%CC%:\Final\INSTALL\short.ps1""' -Verb RunAs}"
powershell.exe -executionpolicy remotesigned -file %CC%:\Final\INSTALL\short.ps1

cd /d %CC%:\Final\INSTALL
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%CC%:\Final\INSTALL\fontv2.ps1""' -Verb RunAs}"
Silverlight_x64.exe /q
@echo 2. Silverlight syyj bna.
BraveSetup-x64.exe
@echo 3. Brave browser syyj bna. 
winrar-x64-561b1.exe /q
@echo 4. winrar-x64-561b1 syyj dyyslaa.
unrar.vbs

@ echo.
@echo 5. VNC password [CTRL + C ] ------ [ 8L7WE-XSDTZ-RWDZJ-3LB8Y-2YYWA  ] ----------------------------
@echo VNC it#2016 password-oo xiisen bol tsaashaa yawna yy !!!!!
vnc-E4_6_1-x86_x64_win32.exe 
rem timeout 6 rem sleep command 

@echo 6. Kaspersky syylgaj bna.....
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%CC%:\Final\INSTALL\Kaspersky.ps1""' -Verb RunAs}"

cd /d %CC%:\Final\INSTALL
@echo 6. Office-16 Syylgaj bna ......
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%CC%:\Final\INSTALL\office_install.ps1""' -Verb RunAs}"


@echo 7. Diamond install ....
cd /d %CC%:\Final\INSTALL\Diamond 5.0\SetupWizard && SetupWizard.exe

	
@echo 8. StoreManagement Install ...
cd /d %CC%:\Final\INSTALL\Diamond 5.0\SetupWizard 
SetupWizard.exe

@echo windows update disable xiigdej bna 
sc config wuauserv start= disabled
net stop wuauserv

@echo Skype License ...   Office syylgasan bol odoo ajillyylna yy?
pause
cd /d %CC%:\Final\INSTALL\
cd skypelic
adserver12.cer

@echo Script Ajillaj Dyyslaa ...
@ echo.
@echo printeree xolboj ogno vv !!!!!
pause

md C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates
xcopy "%CC%:\Final\INSTALL\office_Settings\Normal.dotm" "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\"  /Y /H /E /F /I

rem PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%CC%:\Final\INSTALL\wallpaper.ps1""' -Verb RunAs}"

start PowerShell.exe -executionpolicy remotesigned -file "%CC%:\Final\INSTALL\wallpaper.ps1"

PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%CC%:\Final\INSTALL\Checkerv2.ps1""' -Verb RunAs}"

exit 

 