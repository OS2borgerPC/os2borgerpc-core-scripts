---
title: "Tilføj netværksprinter"
version: 1
parent: "Printer"
source: scripts/network_printer_add_no_ppd.sh
parameters:
  - name: "Navn (OBS: INGEN ÆØÅ, mellemrum eller apostrofer)"
    type: "string"
    default: null
    mandatory: true
  - name: "IP-adresse"
    type: "string"
    default: null
    mandatory: true
  - name: "Beskrivelse / Placering (INGEN ÆØÅ)"
    type: "string"
    default: null
    mandatory: true
  - name: "Protokol"
    type: "string"
    default: "ipp"
    mandatory: false
  - name: "Sæt som standard?"
    type: "boolean"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Tilføjer en netværksprinter.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1. Printernavn - ingen Æ, Ø og Å, ingen mellemrum og ingen apostrofer
2. IP-adresse
3. Beskrivelse / Placering - denne kan godt indeholde mellemrum
4. Protokol - vi anbefaler at afprøve ipp først, medmindre du ved, at denne protokol ikke er understøttet. Andre muligheder er eksempelvis "socket".
5. Sæt som standard? Afgører om printeren også sættes som standard-printer eller ej. Det vil typisk sige, om den er forvalgt i diverse programmer, når der printes.

EFTER kørsel af dette script, kan du evt. ændre indstillinger på printeren med scriptet "Sæt printer-indstillinger".

NÆRMERE INFO OMKRING PROTOKOLLER:
Scriptet "Vis printerliste" kan give en idé om hvilke protokoller en printer understøtter, men det er ikke altid, de er til at identificere. Den sikreste metode for at afgøre hvilke protokoller der understøttes, er derfor at kigge i printerens dokumentation.

IPP:
IPP  kører over TCP og bruger normalt port 631.
Nærmere info: https://en.wikipedia.org/wiki/Internet_Printing_Protocol

Socket/Appscoket/Jetdirect
http://www.cups.org/doc/network.html
https://wiki.debian.org/CUPSPrintQueues#appsock


