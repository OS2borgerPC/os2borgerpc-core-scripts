---
title: "Installer Chrome"
version: 1
parent: "Browser"
source: scripts/chrome_install.sh
parameters:
  - name: "Installér?"
    type: "boolean"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Udviklet og testet i samarbejde med Aarhus kommune.

Installerer Google Chrome - kan også bruges til at opdatere Google Chrome.

I den sidste udgave, var der tilføjet en marker fil i borgeren's home skabelon, som forbygger at chrome spørger brugeren om de vil give samtykke til EULA.
Det som blev tilføjet til koden:
```bash
  # Add a marker file to prevent first boot EULA pop-ups.
  mkdir -p "/home/.skjult/.config/google-chrome"
  touch "/home/.skjult/.config/google-chrome/First Run"
```

Chrome-policies der fremgår i scriptet kan man læse mere om ved at søge på en given policy(fx ForceEphemeralProfiles) her: https://chromeenterprise.google/policies/ 

Dette script er blevet testet og virker på Ubuntu 22.04.