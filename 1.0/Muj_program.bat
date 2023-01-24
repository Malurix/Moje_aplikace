@echo off
color b
title Muj program

cd "%homedrive%\Program Files\"
cd "%homedrive%\Program Files\Malurix\"
if not exist Malurix (cd "%homedrive%\Program Files" > nul & md Malurix > nul & cd Malurix > nul & md Muj_program > nul & cd Muj_program > nul & md 1.0 > nul & cd "%homedrive%\Users\%username%\Downloads" > nul & copy "Muj_program.exe" "%homedrive%\Program Files\Malurix\Muj_program\1.0" > nul & copy "Muj_program.exe" "%homedrive%\Users\%username%\Desktop" > nul & cd "%homedrive%\Users\%username%\Desktop" > nul)
if not exist Muj_program (cd "%homedrive%\Program Files" > nul & cd Malurix > nul & md Muj_program > nul & cd Muj_program > nul & md 1.0 > nul & cd "%homedrive%\Users\%username%\Downloads" > nul & copy "Muj_program.exe" "%homedrive%\Program Files\Malurix\Muj_program\1.0" > nul & copy "Muj_program.exe" "%homedrive%\Users\%username%\Desktop" > nul & cd "%homedrive%\Users\%username%\Desktop" > nul)

:start
echo Co chces udelat?
echo	a) Instalator aplikaci
echo	b) Otevirac aplikaci
echo	c) Kalkulacka
echo	d) Hraci kostka
echo	e) Vypnuti PC
set /p delam=
if %delam% == a goto a
if %delam% == b goto b
if %delam% == c goto c
if %delam% == d goto d
if %delam% == e goto e

exit

:a

set /p adelam=Co chces stahnout? : 

if %adelam% == winrar goto winrar
if %adelam% == chrome goto chrome
if %adelam% == recuva goto recuva
if %adelam% == tlauncher goto tlauncher
if %adelam% == teamviewer goto teamviewer
if %adelam% == discord goto discord
if %adelam% == github goto github
if %adelam% == spotify goto spotify
if %adelam% == steam goto steam
if %adelam% == bluestacks goto bluestacks
echo Vasi aplikaci tento program nezna : c
echo.
goto start

:winrar

start https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-620.exe
timeout /T 10000
cd %homedrive%\Users\%username%\Downloads
start winrar-x64-620.exe
goto cochces

:chrome

start https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7B6053F1ED-CF58-FFA1-F717-564F89C0FA0C%7D%26lang%3Dcs%26browser%3D4%26usagestats%3D1%26appname%3DGoogle%2520Chrome%26needsadmin%3Dprefers%26ap%3Dx64-stable-statsdef_1%26installdataindex%3Dempty/update2/installers/ChromeSetup.exe
timeout /T 10000
cd %homedrive%\Users\%username%\Downloads
start ChromeSetup.exe
goto cochces

:recuva

start https://download.ccleaner.com/rcsetup153.exe
timeout /T 10000
cd %homedrive%\Users\%username%\Downloads
start rcsetup153.exe
goto cochces

:tlauncher

start https://dl2.tlauncher.org/f.php?f=files%2FTLauncher-2.871-Installer-1.0.6.exe
timeout /T 10000
cd %homedrive%\Users\%username%\Downloads
start TLauncher-2.871-Installer-1.0.6
goto cochces

:teamviewer

start https://dl.teamviewer.com/download/version_15x/TeamViewer_Setup_x64.exe
timeout /T 10000
cd %homedrive%\Users\%username%\Downloads
start TeamViewer_Setup_x64.exe
goto cochces

:discord

start https://dl.discordapp.net/distro/app/stable/win/x86/1.0.9010/DiscordSetup.exe
timeout /T 10000
cd %homedrive%\Users\%username%\Downloads
start DiscordSetup.exe
goto cochces

:github

start https://desktop.githubusercontent.com/github-desktop/releases/3.1.4-eaeb66dd/GitHubDesktopSetup-x64.exe
timeout /T 10000
cd %homedrive%\Users\%username%\Downloads
start GitHubDesktopSetup-x64.exe
goto cochces

:spotify

start https://download.scdn.co/SpotifySetup.exe
timeout /T 10000
cd %homedrive%\Users\%username%\Downloads
start SpotifySetup.exe
goto cochces

:steam

start https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe
timeout /T 10000
cd %homedrive%\Users\%username%\Downloads
start SteamSetup.exe
goto cochces

:bluestacks

start https://cdn3.bluestacks.com/downloads/windows/nxt/5.10.110.1002/8aced252b7103d6c1306746b152f867e/BlueStacksMicroInstaller_5.10.110.1002_native.exe?filename=BlueStacks10Installer_0.19.26.1001_native_5337da5bcc669f075d16f417956c6c4b_MzsxNSwwOzUsMTsxNSw0OzE1.exe
timeout /T 10000
cd %homedrive%\Users\%username%\Downloads
start BlueStacks10Installer_0.19.26.1001_native_5337da5bcc669f075d16f417956c6c4b_MzsxNSwwOzUsMTsxNSw0OzE1.exe
goto cochces

:cochces

echo Co chces udelat?

echo a) Znovu otevrit instalator aplikaci

echo b) Otevrit menu

echo c) Vypnout aplikaci

set /p cochcesja=

if %cochcesja% == a goto a

if %cochcesja% == b goto start

if %cochcesja% == c exit

exit

:b

set /p cochcesapp=Co chces otevrit za aplikaci? : 
if %cochcesapp% == winrar cd %homedrive%\Program Files\WinRAR & start WinRAR.exe & goto appco
if %cochcesapp% == chrome cd %homedrive%\Program Files\Google\Chrome\Application & start chrome.exe & goto appco
if %cochcesapp% == recuva echo Aplikace Recuva se nepodarila spustit & goto appco
if %cochcesapp% == tlauncher cd %homedrive%\Users\%username%\AppData\Roaming\.minecraft & start TLauncher.exe & goto appco
if %cochcesapp% == teamviewer cd %homedrive%\Program Files\TeamViewer & start TeamViewer.exe & goto appco
if %cochcesapp% == discord echo Aplikace Discord se nepodarila spustit & goto appco
if %cochcesapp% == github echo Aplikace GitHub se nepodarila spustit & goto appco
if %cochcesapp% == spotify echo Aplikace Spotify se nepodarila spustit & goto appco
if %cochcesapp% == steam cd %homedrive%\Program Files\TeamViewer & start TeamViewer.exe & goto appco
if %cochcesapp% == bluestacks cd "%homedrive%\Program Files (x86)\BlueStacks X" & start BlueStacks X.exe & goto appco

:appco

echo Co chces udelat?

echo a) Znovu otevrit Otevirac aplikaci

echo b) Otevrit menu

echo c) Vypnout aplikaci

set /p cochcesjak=

if %cochcesjak% == a goto b

if %cochcesjak% == b goto start

if %cochcesjak% == c exit

exit

:c

set /p prcis=Napis prvni cislo: 
set /p drcis=Napis druhe cislo: 
set /p oper=Napis jakou operaci s cislami chces delat : 
if %oper% == + set /a vysledek = %prcis% + %drcis%
if %oper% == - set /a vysledek = %prcis% - %drcis%
if %oper% == * set /a vysledek = %prcis% * %drcis%
if %oper% == / set /a vysledek = %prcis% / %drcis%
echo %vysledek%

echo Co chces udelat?

echo a) Znovu otevrit kalkulacku

echo b) Otevrit menu

echo c) Vypnout aplikaci

set /p cochcesjak=

if %cochcesjak% == a goto c

if %cochcesjak% == b goto start

if %cochcesjak% == c exit

exit

:d

echo Prave jsi hodil toto cislo: 
set /a cisls=(%random%*6/32768)+1

echo %cisls%

echo.

echo Co chces udelat?

echo a) Znovu hodit kostkou

echo b) Otevrit menu

echo c) Vypnout aplikaci

set /p cochcesjas=

if %cochcesjas% == a goto d

if %cochcesjas% == b goto start

if %cochcesjas% == c exit

exit

:e

echo Co chces udelat?

echo a) Vypnout PC

echo b) Otevrit menu

echo c) Vypnout aplikaci

set /p cochcesjaky=

if %cochcesjaky% == a shutdown /s /t 0

if %cochcesjaky% == b goto start

if %cochcesjaky% == c exit

exit