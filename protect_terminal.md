---
title: "Juster adgang til terminalen"
parent: "Sikkerhed"
source: scripts/protect_terminal.sh
parameters:
  - name: "Giv adgang til terminalen"
    type: "boolean"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
included_in_image: true
---

## Beskrivelse
Scriptet kan spærre adgangen til terminalen for publikumsbrugeren, men superuser har stadig adgang.

Scriptet tager først fuld effekt efter logud.

Bør bruges sammen med scriptet "Juster adgang til kør prompt (ALT-F2)".

### Sikkerhedsmæssige overvejelser
Bemærk, at brugerens adgang til terminalen ikke i sig selv er et sikkerhedshul. Brugeren kan fra terminalen gøre præcis de ting, som vedkommende har tilladelse til i forvejen.

Hvis brugeren er i stand til at udfordre systemets sikkerhed fra terminalen, skyldes det altså de underliggende tilladelser - ikke terminaladgangen - som ikke gør en grundlæggende forskel.

Blokering af terminaladgangen er dermed dybest set en lappeløsning, som kan være ganske fornuftig - men de underliggende problemer burde adresseres, og hvis de bliver det, vil det ikke længere være nødvendigt at blokere for terminaladgangen.

I nyere images er terminalen blokeret som standard af følgende årsager:
- Det mindsker angrebsområdet: Der er mange ting, der kan lade sig gøre i terminalen, som ikke kan lade sig gøre ellers. Mange programmer er terminalbaserede, og via terminalen kan man derudover køre mange programmer med særlige parametre. Hvis ét af disse programmer eller én af disse indstillinger nu eller i fremtiden viser sig at have et sikkerhedshul, gør terminalen det muligt at udnytte det.
- Borger har typisk ikke brug for terminalen.

Vi bestræber os dog stadig på også at løse de underliggende sikkerhedsproblemer så man - selv med terminal-adgang - ikke kan udnytte dem.


--------------------

Dette script er blevet testet og virker på Ubuntu 22.04.
Det er inbygget i OS2BorgerPC image v. 5.3.0

Udviklet og testet i samarbejde med Aarhus kommune.