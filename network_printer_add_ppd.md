---
title: "Tilføj netværksprinter (PPD-fil skal angives)"
version: 1
parent: "Printer"
source: scripts/network_printer_add_ppd.sh
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
  - name: "PPD-fil"
    type: "file"
    default: null
    mandatory: true
  - name: "Protokol"
    type: "string"
    default: "socket"
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
Tilføj ny netværksprinter.

Dette script er blevet testet og virker på Ubuntu 22.04.

BEMÆRK: Medmindre du har særlige grunde, der kræver en PPD, anbefaler vi i stedet at tilføje printere med scriptet "Tilføj netværksprinter", som ikke kræver en PPD.

## Parametre
1. Printernavn - ingen Æ, Ø og Å og ingen mellemrum
2. IP-adresse
3. Beskrivelse / placering  - denne kan godt indeholde mellemrum
4. Printer-driver (PPD-fil)
5. Protokol - protokollen "socket", også kaldet "appsocket" og "jetdirect" er forvalgt, da det er den protokol dette script historisk har brugt. 
  Hvis scriptet "Tilføj netværksprinter", som har IPP-protokollen forvalgt, ikke virker for den pågældende printer, anbefaler vi at afprøve at køre dette script med "socket".
6. Sæt som standard? Afgører om printeren også sættes som standard-printer eller ej. Det vil typisk sige, om den er forvalgt i diverse programmer, når der printes.

EFTER kørsel af dette script, kan du evt. ændre indstillinger på printeren med scriptet "Sæt printer-indstillinger".

NÆRMERE INFO OMKRING PROTOKOLLER:
Scriptet "Vis printer-liste" kan give en idé om hvilke protokoller en printer understøtter, men det er ikke altid, de er til at identificere. Den sikreste metode for at afgøre hvilke protokoller der understøttes, er derfor at kigge i printerens dokumentation.

IPP:
IPP  kører over TCP og bruger normalt port 631.
Nærmere info: https://en.wikipedia.org/wiki/Internet_Printing_Protocol

Socket/Appscoket/Jetdirect
http://www.cups.org/doc/network.html
https://wiki.debian.org/CUPSPrintQueues#appsock


