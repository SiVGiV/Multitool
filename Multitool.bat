@echo off
title SiVGiV's Multitool
set /p NAME= Hi! What is your name?
cls
if %NAME%== SiVGiV goto start
if %nAME%== sivgiv goto start
if %NAME%== Sivan goto start
if %NAME%== sivan goto start
if %NAME%== Gil goto start
if %NAME%== gil goto start
echo Warning! this software is supposed to be located on desktop.
echo if the software isn't located on desktop it may cause trouble.
pause



:start
cls
echo -logoff
echo -shutdown
echo -restart
echo -go to sleep
echo -bsod
echo -abort
echo -ip
echo -encrypt
echo -random number
echo -custom message
echo -star wars
echo -cool websites
echo -color settings
echo -close
if %NAME%== SiVGiV echo -dev options
if %NAME%== sivgiv echo -dev options
if %NAME%== Sivan echo -dev options
if %NAME%== sivan echo -dev options
if %NAME%== Gil echo -dev options
if %NAME%== gil echo -dev options
echo type cancel anytime to cancel current operation
set /p FUNCTION= What do you wanna do?...
cls
goto %FUNCTION%



:logoff
shutdown /l
echo Logoff in progress.
pause




:shutdown
set /p TIME= How much seconds do you want the delay to be?...
if %TIME%==cancel goto start
shutdown /s /t %TIME%
cls
echo Shutdown in progress.
pause
cls
goto start



:restart
set /p TIME= How much seconds do you want the delay to be?...
if %TIME%==cancel goto start
shutdown /r /t %TIME%
cls
echo Restart in progress.
pause
cls
goto start



:go to sleep
cls
echo ~~~~~ ~~ ~~~~~~~~
ping 1.1.1.1 -n 1 -w 1000 > nul
cls
echo ~~~G~ ~~ ~~~~~~~~
ping 1.1.1.1 -n 1 -w 1000 > nul
cls
echo ~~~Go ~~ ~~~~~~~~
ping 1.1.1.1 -n 1 -w 1000 > nul
cls
echo ~~~Go T~ ~~~~~~~~
ping 1.1.1.1 -n 1 -w 1000 > nul
cls
echo ~~~Go To ~~~~~~~~
ping 1.1.1.1 -n 1 -w 1000 > nul
cls
echo ~~~Go To S~~~~~~~
ping 1.1.1.1 -n 1 -w 1000 > nul
cls
echo ~~~Go To Sl~~~~~~
ping 1.1.1.1 -n 1 -w 1000 > nul
cls
echo ~~~Go To Sle~~~~~
ping 1.1.1.1 -n 1 -w 1000 > nul
cls
echo ~~~Go To Slee~~~~
ping 1.1.1.1 -n 1 -w 1000 > nul
cls
echo ~~~Go To Sleep~~~
ping 1.1.1.1 -n 1 -w 1000 > nul
cls
echo ~~~G0 To Sleep~~~
ping 1.1.1.1 -n 1 -w 1000 > nul
cls
echo ~~~G0 7o Sleep~~~
ping 1.1.1.1 -n 1 -w 1000 > nul
cls
echo ~~~G0 70 Sleep~~~
ping 1.1.1.1 -n 1 -w 1000 > nul
cls
echo ~~~G0 70 $leep~~~
ping 1.1.1.1 -n 1 -w 1000 > nul
cls
echo ~~~G0 70 $Leep~~~
ping 1.1.1.1 -n 1 -w 1000 > nul
cls
echo ~~~G0 70 $L3ep~~~
ping 1.1.1.1 -n 1 -w 1000 > nul
cls
echo ~~~G0 70 $L33p~~~
ping 1.1.1.1 -n 1 -w 1000 > nul
cls
echo ~~~G0 70 $L33P~~~
pause
cls
shutdown /h
cls
goto start



:bsod
cd /
cls
color 17
echo A problem has been detected and Windows has been shut down to prevent damage
echo to your computer.
echo.
echo The problem seems to be caused by the following file: SPCMDCON.SYS
echo.
echo PAGE_FAULT_IN_NONPAGED_AREA
echo.
echo If this is the first time you've seen this stop error screen,
echo restart your computer. If this screen appears again, follow
echo these steps:
echo.
echo Check to make sure any new hardware or software is properly installed.
echo If this is a new installation, ask your hardware or software manufacturer
echo for any Windows updates you might need.
echo.
echo If problems continue, disable or remove any newly installed hardware
echo or software. Disable BIOS memory options such as caching or shadowing.
echo If you need to use Safe Mode to remove or disable components, restart
echo your computer, press F8 to select Advanced Startup Options, and then
echo select Safe Mode.
echo.
echo Technical information:
echo.
echo *** STOP: 0x00000050 (0xFD3094C2,0x00000001,0xFBFE7617,0x00000000)
echo.
echo.
echo *** SPCMDCON.SYS - Address FBFE7617 base at FBFE5000, DateStamp 3d6dd67c
pause >nul
cls
echo Downloading viruses . . .
ping localhost -n 5 >nul
dir /s
pause >nul
shutdown -s -t 120 -c "Your computer has committed suicide, have a nice day."
goto start



:abort
shutdown /a
cls
echo Aborted.
pause
cls
goto start



:ip
echo For IPv4 type 4
echo For IPv6 type 6
set /p IPNUM= What ip do you want to view?...
if %IPNUM%==4 goto four
if %IPNUM%==6 goto six
if %IPNUM%==cancel goto start
	
	:four
	ipconfig | findstr /R /C:"IPv4 Address" 
	set /p OPTIONS= Type save to save IPv4.txt in desktop or menu to go to main menu-
	if %OPTIONS%==save ipconfig | findstr /R /C:"IPv4 Address" >> C:\Users\%USERNAME%\Desktop\IPv4.txt
	goto start

	

	:six
	ipconfig | findstr /R /C:"IPv6 Address"
	set /p OPTIONS= Type save to save IPv6.txt in desktop or menu to go to main menu-
	if %OPTIONS%==save ipconfig | findstr /R /C:"IPv6 Address" >> C:\Users\%USERNAME%\Desktop\IPv6.txt
	goto start



:encrypt
echo please place two files into desktop (the file you want to hide must be a .zip or a .rar).
timeout /t -1
set /p HIDE= Type the name (including extention) of the file you want to hide...
if %HIDE%== cancel goto start
set /p TARGET= Type the name (including extention) of the target file...
if %TARGET%== cancel goto start
move C:\Users\%USERNAME%\Desktop\%HIDE% C:\Users\%USERNAME%\Desktop\%TARGET%
echo to open the hidden file open the output with winrar
pause
goto start



:random number
cls 
set /p LOW= type the lowest number...
if %LOW%== cancel goto start
set /p HIGH= type the highest number...
if %HIGH%== cancel goto start
echo CMD is now generating your number
echo This may take a moment. . . 
	:loop 
	set num=%random% 
	if /i %num% GTR %HIGH% goto loop 
	if /i %num% LSS %LOW% goto loop 
	goto finish 
	:finish 
	cls 
	echo Cmd chose the number %num% 
	pause
	goto start



:custom message
set /p ALERT= What do you want your message to be?
set /p TITLE= What do you want your title to be?
cls
echo 0-OK Button
echo 1-OK/Cancel
echo 2-Abort/Retry/Ignore
echo 3-Yes/No/Cancel
echo 4-Yes/No
set /p BUTTONS= What buttons do you want (type the number)?
cls
echo critical
echo warning
echo warning message
echo information
set /p ICONw= What Icon do you want (do NOT type a number)?
if "%ICONw%"== "critical" set /a ICONn= 16
if "%ICONw%"== "warning" set /a ICONn= 32
if "%ICONw%"== "warning message" set /a ICONn= 48
if "%ICONw%"== "information" set /a ICONn= 64
echo X=MsgBox("%ALERT%",%BUTTONS%+%ICONn%,"%TITLE%") >%MYFILES%\msg.vbs
%MYFILES%\msg.vbs
del %MYFILES%\msg.vbs
goto start



:star wars
set /p STATUS= If it's your first time running star wars type "first". if not, type "movie".
goto %STATUS%
	:movie
	telnet towel.blinkenlights.nl
	goto start
		:first
		cls
		echo when a window pops out Check Telnet Client + Server.
		echo if checked click cancel.
		pause
		call OptionalFeatures.exe
		goto movie



:cool websites
cls
echo Vids:
echo -i dare you
echo -metal construction
echo -fartzenegger
echo -the wiggles
echo -ice jj fish
echo -meet alex
echo Sites:
echo -konga!
echo -omfgdogs
echo -breadfish
echo -emergency yodel
echo -man in the dark
echo -staggering beauty
echo type cancel to go to menu
set /p SITE= What website do you want to visit?...
if "%SITE%"== "i dare you" explorer "http://youtu.be/Edx9D2yaOGs"
if "%SITE%"== "metal construction" explorer "http://youtu.be/gPuI_pbCYOI"
if "%SITE%"== "fartzenegger" explorer "http://youtu.be/5J3Jw2xdszQ"
if "%SITE%"== "the wiggles" explorer "http://youtu.be/DOfaTP5TBkI"
if "%SITE%"== "ice jj fish" explorer "http://youtu.be/iq_d8VSM0nw"
if "%SITE%"== "meet alex" explorer "http://youtu.be/byMbxDwcSPY"
if "%SITE%"== "konga!" explorer "http://www.matmartinez.net/nsfw/"
if "%SITE%"== "omfgdogs" explorer "http://omfgdogs.com/"
if "%SITE%"== "breadfish" explorer "http://www.breadfish.co.uk/"
if "%SITE%"== "emergency yodel" explorer "http://www.emergencyyodel.com/"
if "%SITE%"== "man in the dark" explorer "http://maninthedark.com/"
if "%SITE%"== "staggering beauty" explorer "http://www.staggeringbeauty.com/"
if "%SITE%"== "cancel" goto start
goto cool websites



:color settings
echo -black
echo -blue
echo -green
echo -aqua
echo -red
echo -purple
echo -yellow
echo -white
echo -gray
set /p TEXT= What text color do you want?...
if %TEXT%== black color 0
if %TEXT%== blue color 1
if %TEXT%== green color 2
if %TEXT%== aqua color 3
if %TEXT%== red color 4
if %TEXT%== purple color 5
if %TEXT%== yellow color 6
if %TEXT%== white color 7
if %TEXT%== gray color 8
if %TEXT%== cancel goto start
goto start
	
	
	
:dev options
cls
echo -edit code
echo -import bat (only in .exe)
echo -import txt (only in .exe)
echo -save files (to desktop, only in exe)
set /p FUNCTION= What do you wanna do?...
cls
goto %FUNCTION%

:edit code
notepad C:\Users\%USERNAME%\Desktop\multitool.bat
Taskkill /IM cmd.exe /F
	
:import bat
rem BrowseFiles 
xcopy /y %result% %MYFILES%\Multitool.bat
pause
goto dev options

:import txt
rem BrowseFiles
xcopy /y %result% %MYFILES%\MultitoolEXE.txt
pause
goto dev options

:save Files
copy %MYFILES% C:\Users\%USERNAME%\Desktop
pause
goto dev options



:cancel
:quit
:die
:close
echo Good Bye %NAME% ! Hope you enjoyed!
ping 1.1.1.1 -n 1 -w 2500 > nul
Taskkill /IM cmd.exe /F