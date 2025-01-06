---
title: "Sæt indstillinger for printer"
version: 1
parent: "Printer"
source: scripts/printer_options_set.sh
parameters:
  - name: "Printer-navn"
    type: "string"
    default: null
    mandatory: true
  - name: "PageSize (f.eks. A4 eller Letter)"
    type: "string"
    default: "A4"
    mandatory: false
  - name: "ColorModel (f.eks. RGB eller Gray)"
    type: "string"
    default: null
    mandatory: false
  - name: "Duplex (f.eks. DuplexTumble eller None)"
    type: "string"
    default: null
    mandatory: false
  - name: "Print-orientering"
    type: "text_field"
    default: ",Portrait,Landscape,Reverse landscape,Reverse portrait"
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Script, der sætter de printer-indstillinger (kaldet "Options" i Linux-printersystemet CUPS), der er forespurgt og fundet.

Kør scriptet "Vis printer-indstillinger" for at se, hvilke indstillingsmuligheder, den givne printer har. 
  De konkrete muligheder og de navnene for værdierne kan nemlig variere fra printer til printer.
- Hvis du ønsker at sætte indstillinger som orientering og duplex for en Princh-printer, skal dette i stedet gøres via Princh's egen Princh Admin.
- Vil kun virke, hvis der er en PPD-fil eller hvis printeren er sat op med IPP Everywhere.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1. Printer-navn
2. Papirstørrelse
3. Farve eller sort-hvid
4. Duplex
5. Print-orientering

