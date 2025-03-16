ping 8.8.8.8 -n 2 > nul
if %errorlevel% == 0 (
More?     echo Internetanslutning OK
More? ) else (
More?     echo Ingen internetanslutning. Försök starta om routern.
More? )
Internetanslutning OK

ping 192.168.10.1 -n 2 > nul
if %errorlevel% == 0 (
More?     echo Lokalt nätverk fungerar
More? ) else (
More?     echo Problem med lokalt nätverk. Kontrollera routern.
More?     echo Kör "ipconfig" för att hitta din gateway och testa att pinga den.
More? )
Lokalt nätverk fungerar
