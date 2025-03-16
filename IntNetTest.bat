@echo off

REM Skapa loggfil för felsökning
set logFile=network_test_log.txt

REM Kontrollera internetanslutning
ping 8.8.8.8 -n 2 > nul
if %errorlevel% == 0 (
    echo %date% %time% - Internetanslutning OK >> %logFile%
    echo Internetanslutning OK
) else (
    echo %date% %time% - Ingen internetanslutning. Försök starta om routern. >> %logFile%
    echo Ingen internetanslutning. Försök starta om routern.
)

REM Kontrollera lokalt nätverk
ping 192.168.10.1 -n 2 > nul
if %errorlevel% == 0 (
    echo %date% %time% - Lokalt nätverk fungerar >> %logFile%
    echo Lokalt nätverk fungerar
) else (
    echo %date% %time% - Problem med lokalt nätverk. Kontrollera routern. >> %logFile%
    echo Problem med lokalt nätverk. Kontrollera routern.
    echo Kör "ipconfig" för att hitta din gateway och testa att pinga den.
)
