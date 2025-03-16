#!/bin/bash

# Kontrollera internetanslutning
ping -n 2 8.8.8.8 > /dev/null
if [ $? -eq 0 ]; then
    echo "Internetanslutning OK"
else
    echo "Ingen internetanslutning. Försök starta om routern."
fi

# Kontrollera lokalt nätverk
ping -n 2 192.168.10.1 > /dev/null
if [ $? -eq 0 ]; then
    echo "Lokalt nätverk fungerar"
else
    echo "Problem med lokalt nätverk. Kontrollera routern."
    echo "Kör 'ipconfig' för att hitta din gateway och testa att pinga den."
fi
