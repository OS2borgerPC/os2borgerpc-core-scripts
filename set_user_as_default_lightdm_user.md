---
title: "Sæt Borger som standard ved login"
version: 1
parent: "Login"
source: scripts/set_user_as_default_lightdm_user.sh
parameters:
  - name: "Sæt borger som standard"
    type: "boolean"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
included_in_image: true
hidden: true
---

## Beskrivelse

Script der sætter "Borger" som standard ved login.

Inputparametre:
1: Sæt hak for at sætte Borger som standard. Lad stå tom for at  den forvalgte konto altid er den, der senest aktivt har logget ind.

"Aktivt" vil sige, at der er logget ind ved at klikke på brugeren, fremfor alene autologin via timeout. Dvs. hvis der senest er logget ind på superuser, vil superuser stadig være forvalgt, selv efter autologin til Borger.

Dette script er blevet testet og virker på Ubuntu 22.04.
Indbygget i OS2BorgerPC image 5.0.0 og fremover. Det er også kørt i forbindelse med opgradering fra Ubuntu 20.04 til 22.04.

## Parametre
1. Sæt hak for at sætte Borger som standard. Lad stå tom for at den forvalgte konto altid er den, der senest aktivt har logget ind

