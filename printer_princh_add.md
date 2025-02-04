---
title: "Tilføj Princh Cloud Printer"
version: 2
parent: "Printer"
source: scripts/printer_options_set.sh
parameters:
  - name: "Navn (OBS: INGEN ÆØÅ, mellemrum eller apostrofer)"
    type: "string"
    default: null
    mandatory: true
  - name: "ID"
    type: "int"
    default: null
    mandatory: true
  - name: "Beskrivelse / Placering (INGEN ÆØÅ)"
    type: "string"
    default: null
    mandatory: true
  - name: "Sæt som standardprinter"
    type: "boolean"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Forudsætninger:
Dette script køres efter scriptet "Printer - Installer Princh Cloud Printer".

Har i endnu ikke en Princh-aftale, men ønsker at teste oplevelsen med det, stiller Princh dette test printer-ID til rådighed, som du kan indtaste som inputparameter til dette script:
990000

Vi tager udgangspunkt i Princh's egen installationsguide - hvis man vil kigge nærmere på den, kan den findes her:
https://2803061.fs1.hubspotusercontent-na1.net/hubfs/2803061/Setup%20and%20installation%20guides,%20tech%20reqs/Princh%20for%20Linux%20Installation%20Guide.pdf

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1. Navn: Det navn printeren får i print-dialogen på BorgerPCen. Navnet mi ikke indeholde Æ, Ø, Å, mellemrum, skråstreg eller apostroffer.

2. ID: Dette ID identificerer printeren fra Princhs side, og det skulle de kunne oplyse til dig. Det er et 6-cifret tal.

3. Beskrivelse / Placering: Beskrivelsen printeren får i print-dialogen på BorgerPCen. Den må ikke indeholder æ ø å. Indeholder den mellemrum skal den skrives med citationstegn omkring. F. eks. `"Printer ved info-skranken"`

4. Sæt som standardprinter: Sæt hak hvis den skal være standardprinteren.

