---
title: "Chrome/Chromium: Start i maksimeret, fuld skærm eller kiosk tilstand"
parent: "Browser"
source: scripts/chrome_chromium_start_maximized_fullscreen_kiosk.sh
parameters:
  - name: "Ønsket tilstand (se beskrivelse)"
    type: "text_field"
    default: "none,maximized,fullscreen,kiosk"
    mandatory: true
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Indstil Chrome/Chromium til at åbne eller ikke at åbne i maksimeret tilstand, fuld skærm eller kiosk tilstand som standard.
Der skal logges ud eller genstartes før det tager effekt.

Forudsætter at "Chrome - Installer" eller "Chromium - Installer" tidligere er blevet kørt.

## Parametre
Scriptet tager kun ét parameter. Der vælges mellem `none`, `maximized`, `fullscreen` eller `kiosk`. 

`none` svarer til standardindstillingen, hvor hverken maksimeret, fuld skærm eller kiosk er aktiveret.

Teknisk note: Disse sættes pt. i .desktop-filerne fremfor via browser-politikker, da det desværre ikke pt. er muligt at styre disse via sidstnævnte fra Googles side.

Dette script er blevet testet og virker på Ubuntu 22.04.

