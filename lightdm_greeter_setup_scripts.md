---
title: "Slå scriptkørsel ved login til"
version: 1
parent: "Login"
source: scripts/lightdm_greeter_setup_scripts.sh
parameters:
  - name: "Slet alle tidligere gemte login scripts fra computeren"
    type: "boolean"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
included_in_image: true
hidden: true
---

## Beskrivelse
Slår kørslen af scripts ved loginskærmen til 

Dette script er en forudsætning for at NumLock aktiveres allerede fra loginskærmen med scriptet:
Desktop - Sæt NumLock-tilstand

OBS: Kræver genstart før de nye indstillinger træder i kraft.

Dette script er blevet testet og virker på Ubuntu 22.04.
Inbygget i OS2BorgerPC image version 5.0.0 og senere.

## Parametre
1. Sæt hak for at fjerne alle tidligere gemte login scripts fra computeren, eller lad stå tomt for at lade dem være.
