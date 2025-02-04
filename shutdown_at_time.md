---
title: "Luk ned dagligt"
version: 2
parent: "System"
source: scripts/shutdown_at_time.sh
parameters:
  - name: "Timer"
    type: "string"
    default: null
    mandatory: true
  - name: "Minutter"
    type: "string"
    default: 0
    mandatory: false
compatibility: 
  - "22.04"
  - "BorgerPC"
  - "Kiosk"
---

## Beskrivelse
Lukker computeren ned på et bestemt tidspunkt hver dag.
Brugeren varsles fem minutter før nedlukningen.

NB: Brugeren har ingen mulighed for at undgå nedlukning.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1. Timer: Angiver hvilket timetal computeren lukker ned.
2. Minutter: Angiver hvilket minuttal computeren lukker ned.

Scriptet kan kaldes med '--off' som 1. parameter for at fjerne en planlagt nedlukning.

Eksempel:
Hvis du i timer og minutter angiver henholdsvis "20" og "30", så vil maskinen dagligt lukke ned kl. 20:30.
