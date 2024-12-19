---
title: "Luk ned dagligt"
version: 1
parent: "System"
source: scripts/shutdown_at_time.sh
parameters:
  - name: "Aktiver"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Timer"
    type: "string"
    default: null
    mandatory: true
  - name: "Minutter"
    type: "int"
    default: null
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
1. Aktiver: Sæt hak for at aktiverer automatisk nedlukning. Lad stå tom for at stoppe automatisk nedlukning.
2. Timer: Angiver hvilket timetal computeren lukker ned.
3. Minutter: Angiver hvilket minuttal computeren lukker ned.

Eksempel:
Hvis du i timer og minutter angiver henholdsvis "20" og "30", så vil maskinen dagligt lukke ned kl. 20:30.