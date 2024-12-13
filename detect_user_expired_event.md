---
title: "Detekter låst Borgerkonto"
parent: "Sikkerhed"
source: scripts/detect_user_expired_event.py
compatibility:  
  - "22.04"
  - "BorgerPC"
metadata:
  security: true
---

## Beskrivelse
Dette Sikkerhedsscript giver en Sikkerhedshændelse hvis Borger bliver låst ude/sat til udløbet.

Dette script virker kun på OS2borgerPC, ikke OS2borgerPC Kiosk.

Bruges sammen med en eller begge af følgende: 
- "Bloker for login ved USB-event" + "Sæt bruger aktiv efter blokeret login"
- "OS2borgerPC - Bloker for login ved hård nedlukning" + "Sæt bruger aktiv efter blokeret login"

## Parametre
Ingen
