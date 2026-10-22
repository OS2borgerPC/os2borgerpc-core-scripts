---
title: "Genvej til program fra menu"
version: 1
parent: "Desktop"
source: scripts/desktop_launcher_program_shortcut.sh
parameters:
  - name: "Tilføj programmet?"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Programnavn"
    type: "string"
    default: null
    mandatory: true
  - name: "Position"
    type: "int"
    default: 0
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Tilføj/fjern en genvej i menuen til venstre, ved siden af skrivebordet.
Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1: Aktiver:
  Sæt hak: Programmet tilføjes til menuen.
  Fjern hak: Programmet fjernes fra menuen (hvis det findes).

2: Programnavn:
  Hvilket program du ønsker at tilføje eller slette.
  Eksempler: `firefox`, `google-chrome`, `simple-scan`, `yelp`, `libreoffice-impress`, `libreoffice-writer`, `libreoffice-calc`, `org.gnome.Nautilus`

  Hvis du ikke kender program-navnet præcist, kan du bruge scriptet "Desktop - Vis programliste".

3: Position:
  Angiver hvilken position programmet skal placeres på i menuen.
  `0`: Programmet placeres sidst i menuen. Dette er standardværdien.
  `1`: Programmet placeres først.
  `2`: Programmet placeres på anden plads.
  `3`: Programmet placeres på tredje plads.
  `4, 5, 6, osv`: Placeres på X. plads.
  Et tal, der er større end antallet af programmer i menuen, placerer programmet sidst.

Hvis programmet allerede findes i menuen, fjernes den eksisterende genvej først, så programmet kun findes én gang og placeres på den angivne position.
