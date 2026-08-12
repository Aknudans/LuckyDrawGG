@echo off
setlocal enabledelayedexpansion
title LuckyDrawGG - Servidor local
cd /d "%~dp0"

set PORT=3001

echo Detectando la IP local...

set LOCAL_IP=
for /f "usebackq delims=" %%A in (`powershell -NoProfile -Command "(Get-NetIPAddress -AddressFamily IPv4 | Where-Object { $_.IPAddress -ne '127.0.0.1' -and $_.IPAddress -notlike '169.254.*' } | Sort-Object -Property @{Expression={if($_.IPAddress -like '192.168.*'){0}elseif($_.IPAddress -like '10.*'){1}else{2}}} | Select-Object -First 1 -ExpandProperty IPAddress)"`) do set LOCAL_IP=%%A

if "%LOCAL_IP%"=="" (
    echo.
    echo No se pudo detectar la IP local automaticamente.
    echo Ejecuta "ipconfig" en otra ventana y busca la direccion IPv4
    echo del adaptador de tu red Wi-Fi o Ethernet.
    echo.
    pause
    exit /b 1
)

cls
echo ============================================================
echo   LuckyDrawGG - servidor local
echo ============================================================
echo.
echo Conecta tu telefono a la MISMA red Wi-Fi que esta computadora.
echo Luego ingresa una de estas direcciones en el navegador del
echo telefono (o escanea el QR que se genera en "Crear torneo"):
echo.
echo   Organizador (crear torneo):
echo     http://%LOCAL_IP%:%PORT%/crear-torneo.html
echo.
echo   Participante (unirse a un torneo):
echo     http://%LOCAL_IP%:%PORT%/unirse.html
echo.
echo   Constructor de mazos:
echo     http://%LOCAL_IP%:%PORT%/modulo-armar-mazo.html
echo.
echo ============================================================
echo   Para detener el servidor, cierra esta ventana o presiona
echo   Ctrl+C.
echo ============================================================
echo.

start "" "http://%LOCAL_IP%:%PORT%/crear-torneo.html"

npx --yes serve . -l tcp://%LOCAL_IP%:%PORT%

pause
