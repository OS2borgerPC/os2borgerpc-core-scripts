---
title: "Installer Chrome"
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

Siden sidste udgave er der nu tilføjet nedenstående til OS2borgerpcs default Chrome policy, som gør at borger **ikke** kan:

- Logge på(BrowserSync) Chrome med en Google-konto
- Installere udvidelser. (Administrator kan styre dette centralt vha. scriptet "Chrome: Tilføj/fjern Udvidelser")
- Tilgå Chrome' Udviklerværktøjer
- Gemme sine logins
- Ændre/tilføje startside(r)
- Bruge Chromecast
- Web data som cookies og web databaser preserveres ikke efter nedlukning af browser.
- Tilgå udvalgte chrome-settings URL'er. 

Chrome-policies der fremgår i scriptet kan man læse mere om ved at søge på en given policy(fx ForceEphemeralProfiles) her: https://chromeenterprise.google/policies/ 

Dette script er blevet testet og virker på Ubuntu 22.04.