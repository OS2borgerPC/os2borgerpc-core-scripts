---
title: "Detekter nytilsluttet keyboard"
parent: "Sikkerhed"
source: scripts/detect_keyboard_event.py
compatibility:  
  - "22.04"
  - "BorgerPC"
security: true
---

## Beskrivelse
Sikkerhedsscriptet identificerer ny-tilsluttede keyboards helt tilbage fra sidste gang systemet blev tjekket. Findes det resulterer det i en sikkerhedshændelse. 
At fjerne et keyboard giver IKKE en advarsel.

BEMÆRK: Dette sikkerhedsscript er afhængigt af, om USB-enheden identificerer sig selv som et keyboard. Af denne grund, vil vi - såfremt det er muligt i jeres anvendelse -  anbefale i stedet at benytte scriptet, der låser maskinen ved indsættelse af ALLE USB-enheder ("Bloker for login ved USB-event"), sammen med sikkerhedscriptet der giver en advarsel, når Borger-kontoen er blevet låst ("Detekter låst Borgerkonto").

Dette sikkerhedsscript virker både på OS2borgerPC og OS2borgerPC Kiosk, men vi mener det er mest relevant på førstnævnte, ift. faren ved keyloggers på publikumsmaskiner.

VIGTIG BEMÆRKNING: 
Sikkerhedsscriptet er kun aktivt, når maskinen er tændt!

Af ovenstående grund er det centralt, at besøgende ikke kan tilgå maskinerne mens de er slukket, uden at det opdages.

Derfor foreslår vi at kombinere det med følgende tre scripts:

1. Scriptet "Desktop - Fjern Luk Ned og Genstart fra sessionmenuen og blokér for nedlukning via systempolitik"

2. Scriptet "OS2borgerPC - Blokér for login ved hård nedlukning"

3. Sikkerhedsscriptet "Detekter låst Borgerkonto"

Sammen betyder de tre:
1.  At brugeren ikke kan lukke maskinen ned fra menuen. 
2. Trykker de på knappen for at lukke den ned, eller hiver de strømstikket ud, så låses der for login for Borger-kontoen. (Da de potentielt være have indsat en keylogger)
3. Hvis Borger-kontoen låses modtager man, pga. script tre, en sikkerhedshændelse

Ønsker man slet ikke at Borgere skal kunne rode med USB-enheder så kan man bruge scriptet 
"OS2borgerPC - Blokér for login ved USB-event"
Med dette andet script vil både at tilføje eller fjerne en USB-enhed mens maskinen er tændt, betyde at Borgeren logges øjeblikkeligt ud, og at der derefter låses for login.

Når Borger-kontoen er låst kan man fra adminsitet køre scriptet "OS2borgerPC - Sæt bruger aktiv efter blokeret login (lås op)" for at åbne for login på Borger-kontoen igen.

## Parametre
Ingen