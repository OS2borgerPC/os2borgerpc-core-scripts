---
title: "Aktiver automatiske opdateringer fra Ubuntu"
version: 1
parent: "System"
source: scripts/apt_periodic_control.sh
parameters:
  - name: "Aktiver generelle opdateringer (sikkerhed/alt/falsk)"
    type: "string"
    default: null
    mandatory: true
compatibility: 
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Dette script aktiverer automatiske opdateringer fra Ubuntu.
I nyere os2borgerpc-images er sikkerhedsopdateringer allerede slået til.

Du kan vælge om du ønsker:
- sikkerhedsopdateringer + generelle opdateringer 
- kun sikkerhedsopdateringer.

Standard er kun sikkerhedsopdateringer.

### Info om de to opdateringsmuligheder:

**Sikkerhedsopdateringer:**
De vigtigste opdateringer, som retter sårbarheder i systemet og dets programmer.

**Generelle opdateringer:**
Retter fejl og tilføjer nogle gange ny funktionalitet i tilføjelsesprogrammerne.

Info omkring Ubuntus håndtering af automatiske opdateringer:
- Disse opdateringer hentes og installeres usynligt i baggrunden, uanset om maskinen er i brug eller ej.
- Maskinen vil tjekke efter opdateringer to gange dagligt, på tilfældige tidspunkter.
Hvis den missede en opdatering dagen før, fordi den var lukket ned på et af dens planlagte opdateringstidspunkter, vil den tjekke kort efter opstart.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1. Aktiver generelle opdateringer (sikkerhed/alt/falsk)\
sikkerhed: Kun sikkerhedsopdateringer\
alt: Både sikkerhedsopdateringer og generelle opdateringer\
falsk: Ingen opdateringer (anbefales ikke)
