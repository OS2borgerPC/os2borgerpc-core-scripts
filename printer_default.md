---
title: "Sæt standardprinter"
version: 1
parent: "Printer"
source: scripts/printer_default.sh
parameters:
  - name: "Navn"
    type: "string"
    default: null
    mandatory: true
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Vælg standard printer. Printer navnet kan findes ved at køre scriptet "Printer - Vis printer liste"

Bemærk at scriptet har problemer hvis printer navnet indeholder mellemrum. I så fald anbefales det at ændre printer navnet.

Dette script er blevet testet og virker på Ubuntu 22.04.