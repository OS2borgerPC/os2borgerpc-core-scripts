---
title: "Chromium med skærmtastatur (onboard)"
parent: "Kiosk"
source: scripts/wm_keyboard_install.sh
parameters:
  - name: "Tilføj skærmtastatur?"
    type: "boolean"
    default: null
    mandatory: false
compatibility: 
  - "22.04"
  - "Kiosk"
---

## Beskrivelse
Sætter billedet op, så det er delt mellem browseren og et virtuelt tastatur.

Dette script forudsætter at følgendes scripts allerede er kørt:
- Installer Chromium på kiosk
- Autostart Chromium på Kiosk

Hvis du oplever, det ikke virker, så genkør scriptet "Autostart Chromium på Kiosk", efterfulgt af dette script.

Dette script tager først effekt efter genstart.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1: Tilføj skærmtastatur?:\
   Sæt hak: Installerer og slår skærmtastaturet til\
   Lad stå tom: Slår skærmtastatur fra (standard)

