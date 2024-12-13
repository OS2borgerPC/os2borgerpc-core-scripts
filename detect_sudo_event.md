---
title: "Detekter sudo-kørsel"
parent: "Sikkerhed"
source: scripts/detect_sudo_event.py
compatibility:  
  - "22.04"
  - "BorgerPC"
metadata:
  security: true
---

## Beskrivelse
Dette Sikkerhedsscript giver en sikkerhedshændelse ved sudo-kørsel.

Dette script virker både på OS2borgerPC og OS2borgerPC Kiosk.

Der gives både en advarsel hvis sudo køres med succes, hvis det fejler pga. det køres fra Borger fremfor superuser, eller den indtastede kode er forkert.
Nærmere specifikt: 
sudo-kommandoen giver én tre forsøg på at indtaste koden - taster man forkert tre gange vil det give en advarsel. Taster man korrekt vil det ligeledes give en advarsel.

Derfor: Hvis du har tilføjet en regel for en maskine, og du selv er inde på den fra superuser, vil der også komme en advarsel, hvis du kører sudo.

Når du modtager en advarsel vil der ofte stå USER=root i beskeden. Dette betyder ikke, at brugeren allerede har root-adgang (dvs. administrator-adgang), men alene at brugeren, personen forsøger at køre kommandoer som, er administrator-kontoen.

## Parametre
Ingen