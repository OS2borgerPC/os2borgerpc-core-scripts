---
title: "Genvej til hjemmeside på skrivebord"
version: 1
parent: "Desktop"
source: scripts/desktop_url_shortcut.sh
parameters:
  - name: "Aktivér?"
    type: "boolean"
    default: null
    mandatory: false
  - name: "URL"
    type: "string"
    default: null
    mandatory: true
  - name: "Genvejsnavn"
    type: "string"
    default: null
    mandatory: true
  - name: "Ikon (Valgfri. Hvis tom benyttes et standard-ikon.)"
    type: "file"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Opretter eller sletter en genvej til til en valgfri hjemmeside på skrivebordet, med det angivne navn.
Efter kørsel tager det effekt efter logud.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1. Aktiver?: Sæt hak for at oprette genvejen, 
    Lad stå tom for at slette den, så fremt den findes.
2. URL til webstedet. Ingen mellemrum. Husk `https://` eller `http://` foran - det skal være den fulde adresse (kopier den eventuelt fra adresselinien i browseren), fremfor eks. bare `eboks.dk` eller `www.eboks.dk`, som ikke vil virke.
3. Genvejsnavn: Navnet genvejen skal have på skrivebordet.
    Bemærk at navnet ikke må indeholde mellemrum.
4. Ikon. Du kan selv uploade et ikon-billede, eller du kan undlade og så bruger den et standardikon. Upload en kvadratisk .SVG- eller .PNG-fil.


