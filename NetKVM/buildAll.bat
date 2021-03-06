:: Build Windows 8
setlocal
call tools\set_version.bat 0x0620
call ..\tools\callVisualStudio.bat 11 netkvm.sln /Rebuild "Win8 Release|Win32"
endlocal
if %ERRORLEVEL% NEQ 0 goto :eof

setlocal
call tools\set_version.bat 0x0620
call ..\tools\callVisualStudio.bat 11 netkvm.sln /Rebuild "Win8 Release|x64"
endlocal
if %ERRORLEVEL% NEQ 0 goto :eof

setlocal
call tools\set_version.bat 0x0620
call ..\tools\callVisualStudio.bat 11 netkvm.sln /Rebuild "Win8 Debug|Win32"
endlocal
if %ERRORLEVEL% NEQ 0 goto :eof

setlocal
call tools\set_version.bat 0x0620
call ..\tools\callVisualStudio.bat 11 netkvm.sln /Rebuild "Win8 Debug|x64"
endlocal
if %ERRORLEVEL% NEQ 0 goto :eof

:: Build Windows 7
setlocal
call tools\set_version.bat 0x0610
call ..\tools\callVisualStudio.bat 11 netkvm.sln /Rebuild "Win7 Release|Win32"
endlocal
if %ERRORLEVEL% NEQ 0 goto :eof

setlocal
call tools\set_version.bat 0x0610
call ..\tools\callVisualStudio.bat 11 netkvm.sln /Rebuild "Win7 Release|x64"
endlocal
if %ERRORLEVEL% NEQ 0 goto :eof

setlocal
call tools\set_version.bat 0x0610
call ..\tools\callVisualStudio.bat 11 netkvm.sln /Rebuild "Win7 Debug|Win32"
endlocal
if %ERRORLEVEL% NEQ 0 goto :eof

setlocal
call tools\set_version.bat 0x0610
call ..\tools\callVisualStudio.bat 11 netkvm.sln /Rebuild "Win7 Debug|x64"
endlocal
if %ERRORLEVEL% NEQ 0 goto :eof


:: Build Windows Vista
setlocal
call tools\set_version.bat 0x0600
call ..\tools\callVisualStudio.bat 11 netkvm.sln /Rebuild "Vista Release|Win32"
endlocal
if %ERRORLEVEL% NEQ 0 goto :eof

setlocal
call tools\set_version.bat 0x0600
call ..\tools\callVisualStudio.bat 11 netkvm.sln /Rebuild "Vista Release|x64"
endlocal
if %ERRORLEVEL% NEQ 0 goto :eof

setlocal
call tools\set_version.bat 0x0600
call ..\tools\callVisualStudio.bat 11 netkvm.sln /Rebuild "Vista Debug|Win32"
endlocal
if %ERRORLEVEL% NEQ 0 goto :eof

setlocal
call tools\set_version.bat 0x0600
call ..\tools\callVisualStudio.bat 11 netkvm.sln /Rebuild "Vista Debug|x64"
endlocal
if %ERRORLEVEL% NEQ 0 goto :eof

:: XP
pushd NDIS5
call buildall.bat XP
popd
if %ERRORLEVEL% NEQ 0 goto :eof
xcopy /S /I /Y NDIS5\Install\XP\x86 Install\XP\x86

:: XP64
pushd NDIS5
call buildall.bat XP64
popd
if %ERRORLEVEL% NEQ 0 goto :eof
xcopy /S /I /Y NDIS5\Install\XP\amd64 Install\XP\amd64

