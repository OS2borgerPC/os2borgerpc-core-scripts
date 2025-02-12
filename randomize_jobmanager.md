---
title: "Jobmanager: Skift start-tidspunkt og interval"
version: 1
parent: "System"
source: scripts/randomize_jobmanager.sh
parameters:
  - name: "Interval"
    type: "int"
    default: null
    mandatory: true
compatibility: 
  - "22.04"
  - "BorgerPC"
  - "Kiosk"
included_in_image: true
hidden: true
---

## Beskrivelse
Jobmanageren er det program, der tjekker adminsitet efter om BorgerPC'en eller DisplayPC'en har nye scripts til kørsel, og som sender status tilbage, og evt. information om sikkerhedsadvarsler. Jobmanageren kører normalt hvert 5. minut, startende fra 00.

Dette script får i stedet cron.d/bibos_jobmanager jobbet til at starte på et tilfældigt tidspunkt inden for et givent interval.

Eksempel: Intervallet er 5 minutter, så kan jobmanageren potentielt køre hvert 1., 6., 11..56. minut hver time, i stedet for 0., 5., 10...55. minut.

Starttidspunktet er valgt tilfældigt inden for et interval.

Dette script er inkluderet i OS2BorgerPC image fra version 4.0.0 og fremadrettet.
Dette script er blevet testet og virker på Ubuntu 22.04.