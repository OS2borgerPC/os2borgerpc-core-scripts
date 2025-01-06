---
title: "Genvej på skrivebordet til valgfri mappe"
version: 1
parent: "Desktop"
source: scripts/desktop_shortcut_to_directory.sh
parameters:
  - name: "Tilføj?"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Sti til mappe"
    type: "string"
    default: null
    mandatory: true
  - name: "Genvejsnavn"
    type: "string"
    default: null
    mandatory: true
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Opretter/fjerner en genvej på skrivebordet til en valgfri mappe.
Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1. Tilføj?:  Sæt hak: Genvejen tilføjes til Skrivebordet. Fjern hak: Genvejen fjernes fra Skrivebordet (hvis det ligger der)
2. Stien til mappen (eksempelvis: `/home/user/Dokumenter`) Bemærk at ift. stien, så har store og små bogstaver en betydning!
3. Genvejsnavn: (eksempelvis: `Skannede filer` )



