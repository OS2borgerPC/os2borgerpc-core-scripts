---
title: "Juster adgang til Indstillinger"
parent: "Sikkerhed"
source: scripts/adjust_settings_access.sh
parameters:
  - name: "Giv adgang til Indstillinger"
    type: "boolean"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
included_in_image: true
---

## Beskrivelse
SIKKERHEDSMÆSSIGE OVERVEJEJELSER:
Dette script låser ned eller op for adgang til Indstillinger.

Hvis borgere gives adgang til indstillinger, vil ændringer de foretager dog *generelt* stadig nulstilles efter logud. Det har dog vist sig, der kan være enkelte undtagelser: 
Indstillinger -> Privatliv -> Tjek af forbindelse
...kan ændres permanent!

Standardindstillingen er at borgere ikke har adgang til indstillinger. Vi FRARÅDER pga. ovenstående at Borger gives adgang til Indstillinger.

Dette script påvirker kun Borger-kontoen - superuser har altid adgang til Indstillinger, men superusers ændringer i Indstillinger påvirker ikke Borger - eller omvendt.

Dette script er blevet testet og virker på Ubuntu 22.04. 
Indbygget i OS2BorgerPC image version 3.1.0 og nyere.

## Parametre
Sæt hak: Borger har adgang til Indstillinger
Intet hak: Borger har IKKE adgang til Indstillinger