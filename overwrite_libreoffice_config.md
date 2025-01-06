---
title: "LibreOffice - Sæt indstillinger"
version: 1
parent: "Programmer"
source: scripts/overwrite_libreoffice_config.sh
parameters:
  - name: "Slå 'Tip of the Day' fra"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Brug Microsofts filformater"
    type: "boolean"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
included_in_image: true
---

## Beskrivelse
Script der overskriver LibreOffices config med vores egen. 

Kræver at brugeren logger ud og ind igen før indstillingerne træder i kraft.

Dette script er blevet testet og virker på Ubuntu 22.04.
Indbygget i OS2BorgerPC image fra version 5.0.0, men er gradvist forbedret.


## Parametre
1. Sæt kryds for at slå "Tip of the Day" og frigivelsesnoter fra. Lad stå tom for at slå dem til.
2. Sæt kryds for at bruge Microsofts filformater (.docx, .xlsx, .pptx) frem for LibreOffices standard ODF formater. Lad stå tom for at bruge standard-formaterne.


