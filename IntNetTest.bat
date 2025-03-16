@echo off

REM Kontrollera internetanslutning
ping 8.8.8.8 -n 2 > nul
if %errorlevel% == 0 (
    echo Internetanslutning OK
) else (
    echo Ingen internetanslutning. Försök starta om routern.
)

REM Kontrollera lokalt nätverk
ping 192.168.10.1 -n 2 > nul
if %errorlevel% == 0 (
    echo Lokalt nätverk fungerar
) else (
    echo Problem med lokalt nätverk. Kontrollera routern.
    echo Kör "ipconfig" för att hitta din gateway och testa att pinga den.
)
