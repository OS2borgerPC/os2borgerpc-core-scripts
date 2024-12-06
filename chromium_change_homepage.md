---
title: "Skift startside for Chromium på Kiosk"
parent: "Kiosk"
source: scripts/chromium_change_homepage.sh
parameters:
  - name: "URL"
    type: "string"
    default: null
    mandatory: true
compatibility:  
  - "22.04"
  - "Kiosk"
---

## Beskrivelse
Skifter startside i Chromium.

Hvis du oplever scriptet fejle, genkør "Autostart Chromium" før dette.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1: Hvilken URL der skal være den nye startside.

