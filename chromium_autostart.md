---
title: "Autostart Chromium på Kiosk"
version: 1
parent: "Kiosk"
source: scripts/chromium_autostart.sh
parameters:
  - name: "Forsinkelse"
    type: "int"
    default: 0
    mandatory: true
  - name: "URL"
    type: "string"
    default: null
    mandatory: true
  - name: "Bredde"
    type: "string"
    default: "auto"
    mandatory: true
  - name: "Højde"
    type: "string"
    default: "auto"
    mandatory: true
  - name: "Orientation"
    type: "text_field"
    default: "normal, inverted, left, right"
    mandatory: false
  - name: "Lås ned for browser-genvejstaster?"  
    type: text_field
    default: "0: Ingen nedlåsning af genvejstaster, 1: Lås genvejstaster bortset fra print genindlæs og zoom, 2: Lås alt"
    mandatory: false
compatibility:  
  - "22.04"
  - "Kiosk"
---

## Beskrivelse
Start Chromium i kiosk-mode og sæt startside URLen.

Dette script forudsætter at følgendes scripts allerede er kørt:
- Chromium Installer

Chromium Autostart slår automatisk kiosk-tilstand til, men ikke inkognito.

Hvis du benytter skærmtastatur-scriptet og genkører dette script, skal skærmtastatur-scriptet køres igen herefter.

Scriptet kræver en genstart før det tager effekt.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
Der angives en forsinkelse før browseren startes, der kan hjælpe med at løse evt. timing issues (som regel virker det fint med 1 sekund, der angives ved tallet 1).

Skærmens højde og bredde skal sættes til skærmens korrekte opløsning.

Desuden skal der angives en orientering, som kan være "left", "right" eller "normal".

