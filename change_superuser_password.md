---
title: "Skift kodeord for superuser"
version: 1
parent: "System"
source: scripts/change_superuser_password.sh
parameters:
  - name: "Kodeord"
    type: "password"
    default: null
    mandatory: true
  - name: "Gentag kodeord"
    type: "password"
    default: null
    mandatory: true
compatibility: 
  - "22.04"
  - "BorgerPC"
  - "Kiosk"
---

## Beskrivelse
Skift til det angivne superuser-kodeord.

Det er MEGET VIGTIGT at skifte fra standard-kodeordet til et andet, så snart en OS2borgerPC-maskine er færdiginstalleret.

Inputparametre:
- Det nye kodeord
- Gentag det nye kodeord

Regler for kodeordet:
- Skal indeholde mindst 8 tegn
- Kan ikke indeholde navnet på brugeren
- Kan ikke være et enkelt ord fra ordbogen som fx. "bibliotek"

Dette script er blevet testet og virker på Ubuntu 22.04.