---
title: "Sæt NumLock-tilstand"
parent: "System"
source: scripts/lightdm_enable_numlock.sh
parameters:
  - name: "Slå numlock til"
    type: "boolean"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Dette script installerer numlockx og slår numlock til når computeren når til loginsiden.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1. Sæt hak for at slå numlock til, eller lad stå tomt for at fjerne denne funktion igen.

