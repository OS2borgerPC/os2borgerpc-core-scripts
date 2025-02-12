---
title: "Genvej til logud fra skrivebord"
version: 1
parent: "Desktop"
source: scripts/desktop_logout_button_icon.sh
parameters:
  - name: "Aktiver?"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Genvejsnavn"
    type: "string"
    default: null
    mandatory: true
  - name: "Bekræftelse på logud?"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Ikon til genvejen (png/svg/jpg)"
    type: "file"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Tilføjer en logud-knap til skrivebordet, med valgfrit navn og ikon (uploades), og mulighed for at bestemme om der skal logges ud øjeblikkeligt, eller om brugeren skal bekræfte først.

Log ud efter kørsel.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1. Aktiver?:
   Sæt hak: Genvejen tilføjes
   Lad stå tom: Genvejen fjernes
2. Genvejsnavn: Navnet du ønsker, knappen skal have på skrivebordet.
3. Bekræftelse på logud:
  Sæt hak: Borgeren spørges efter bekræftelse.
  Lad stå tom: Der genstartes øjeblikelligt, uden at spørge om bekræftelse (der er mulighed for at fortryde).
4. Ikon: Hvilket ikon logudknappen skal have (en kvadratisk .SVG- eller .PNG-fil). Hvis du ikke vælger ét, vil et standardikon blive brugt.

