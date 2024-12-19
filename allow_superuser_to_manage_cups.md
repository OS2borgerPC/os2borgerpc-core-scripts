---
title: "Tillad superuser at redigere CUPS-indstillinger"
parent: "Printer"
source: scripts/allow_superuser_to_manage_cups.sh
parameters:
compatibility:  
  - "22.04"
  - "BorgerPC"
included_in_image: true
---

## Beskrivelse
Dette script er indbygget i image 5.2.0 og fremover.

Specifikt giver kørsel af dette script superuser tilladelse til at kunne redigere diverse printerindstillinger, 
såsom at tilføje printere, eksempelvis fra en browser via CUPS' webinterface, der er tilgængelig på følgende adresse fra selve maskinen:
http://localhost:631


## Parametre
Ingen

