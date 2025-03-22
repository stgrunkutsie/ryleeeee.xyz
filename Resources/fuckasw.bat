@echo off
cd /d "%~dp0"
echo server:asw.Off > temp_asw.txt
echo exit >> temp_asw.txt
"C:\Program Files\Oculus\Support\oculus-diagnostics\OculusDebugToolCLI.exe" -f "%~dp0temp_asw.txt"
echo ASW disabled!
"C:\Program Files\Oculus\Support\oculus-diagnostics\OculusDebugToolCLI.exe" -f "%~dp0temp_asw.txt"
echo ODT closed!
timeout /t 2 /nobreak >nul
del "%~dp0temp_asw.txt"
echo Tempfile deleted!
start "" "bsmanager://launch?version=1.39.1&versionIno=9851624184954652&oculusMode=true"
echo Beat Saber launching!
exit