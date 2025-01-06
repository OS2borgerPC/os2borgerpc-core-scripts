---
title: "Genvej til logud fra menu"
version: 1
parent: "Desktop"
source: scripts/desktop_launcher_logout_button_icon.sh
parameters:
  - name: "Tilføj logud-knappen?"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Genvejsnavn"
    type: "string"
    default: null
    mandatory: true
  - name: "Indsæt i starten af menuen?"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Ikon"
    type: "file"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Opretter en logud-genvej i menuen med valgfrit ikon. Man kan også undlade at vælge et ikon selv, og så benyttes et standard-ikon. Ikonet skal være i et af følgende formater: 
.svg, .png, .jpg/.jpeg
Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1. Tilføj logud-knappen?: Skal genvejen tilføjes eller fjernes? 
    Sæt hak for at tilføje.
    Lad stå tom for at slette den, så fremt den findes.
2. Genvejsnavn: Navnet du ønsker, genvejen skal have. Denne kan ses hvis Borgeren holder musen hen over genvejen.
3. Indsæt i starten af menuen?: Skal genvejen sættes i starten eller enden af menuen?
    Sæt hak for at sætte den i starten.
4. Ikon: Her kan du uploade eget ikon at bruge til genvejen. Du kan også udelade at uploade et ikon, og der vil i så fald blive brugt et standard-ikon til genvejen.

