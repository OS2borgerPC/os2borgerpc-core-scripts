---
title: "Vis indstillinger for printer"
parent: "Printer"
source: scripts/printer_options_get.sh
parameters:
  - name: "Printer-navn"
    type: "string"
    default: null
    mandatory: true
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Vis de forskellige indstillinger for den ønskede printer i Job-loggen.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1: Navnet på printeren (kør evt. "Vis printer-liste" for at finde det)

