---
title: "Bloker for login ved USB-event"
parent: "Sikkerhed"
source: scripts/lockdown_usb.sh
parameters:
  - name: "Aktiver?"
    type: "boolean"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
SIKKERHEDSMÆSSIGE OVERVEJELSER:
Dette script har primært det formål at forhindre, at der indsættes en keylogger ml. computer og keyboard, uden at det opdages.
Det reagerer både på indsættelse og udtagning af USB-enheder, og det gælder alle USB-enheder fremfor kun keyboards. Dette er også relevant, fordi nogle enheder ikke altid identificeres som keyboards, såsom hvis der er tale om nogle receivere til både mus og tastatur.

Borger-konto låses øjeblikkeligt ved en hændelse, som kan være relevant, hvis det kan tage personale noget tid at opdage sikkerhedshændelsen og få den undersøgt.

BESKRIVELSE:
Installerer en systemtjeneste, der låser maskinen, når USB-udstyr indsættes eller fjernes. Der skrives også en log i /var/log/usb-events.log om de hændelser, hvor USB-udstyr blev indsat eller fjernet.

Når Borger-kontoen er låst, kan man bruge scriptet "Sæt Borger som aktiv efter blokeret login (lås op)".

VIGTIG BEMÆRKNING: 
Scriptet er kun aktivt, når maskinen er tændt!
Af den grund er det centralt, at besøgende ikke kan tilgå maskinerne mens de er slukket, uden at det opdages.

Derfor anbefaler vi også at benytte det sammen med:
- Blokér for login ved hård nedlukning (Script)
- Fjern Luk Ned, Genstart og Hviletilstand fra menuen (Script)

På denne måde kan brugeren ikke lukke computeren ned fra menuen, og hiver de strømstikket vil Borger-kontoen låses efter opstart, så personalet kan undersøge om der skulle være indsat en keylogger ml. computer og keyboard.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1: Aktivér:\
Sæt hak: Blokering for login ved USB-event\
Lad stå tom: Fjerner blokering for login ved USB-event (standard)

