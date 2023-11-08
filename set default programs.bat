::made by java 9.6.2023
@echo off
color 0C
setlocal enabledelayedexpansion

	:menu
	
	color 0C
	cls
	
echo Please select what you want to do:

echo 1: Set Adobe 2020 as default application
echo 2: Set Adobe Reader DC as default application
echo 3: Exit

set /p selection="Select your choice (1/2/3): "

	
	if "!selection!"=="1" (

	assoc .pdf=Acrobat.Document.2020
    ftype Acrobat.Document.2020="C:\Program Files (x86)\Adobe\Acrobat 2020\Acrobat\Acrobat.exe"
	cls
	color 09
	echo Adobe Acrobat 2020 has been set as default
	pause 5
	goto menu
	
) else if "!selection!"=="2" (

    assoc .pdf=Acrobat.Document
	ftype Acrobat.Document="C:\Program Files (x86)\Adobe\Acrobat Reader DC\Reader\AcroRd32.exe"
	cls
	color 0F
	echo Adobe Reader has been set as default
	pause 5
	goto menu

) else if "!selection!"=="3" (
	goto exit
	
) else (
    echo Invalid choice. Please enter 1, 2, or 3.
    pause
    goto menu
)

endlocal

:exit
exit

