---
title: "Firefox: Sæt startside(r)"
version: 1
parent: "Browser"
source: scripts/firefox_global_policies.sh
parameters:
  - name: "Startside-URL"
    type: "string"
    default: null
    mandatory: true
  - name: "Ekstra faneblade"
    type: "string"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
included_in_image: true
---

## Beskrivelse
Scriptet fjerner alle default startsider (inkl. fanen "Firefox Privacy Notice"), som køres hver gang Firefox startes for første gang i en given ny bruger-session. 

Scriptet implementerer policies, der bla.a. deaktiverer slut-brugers' mulighed for at installere udvidelser samt at logge på(browser sync). 
Ydermere deaktiveres lagring af historik og cache, gem-password, tracking, m.m. 

For mere info de konkrete implementerede policies henvises til at læse scriptet, hvor man kan krydsrefere med Mozillas dokumentation her: 
https://github.com/mozilla/policy-templates 

Udover at sætte startsiden kan man også tilføje en liste yderligere ekstra faner man kunne tænke sig. Læs mere forneden.

Dette script er blevet testet og virker på Ubuntu 22.04.
Indbygget i OS2BorgerPC image version 5.0.0 og senere hvor det køres med parameteren https://borger.dks
Udviklet og testet i samarbejde med Aarhus kommune.

## Parametre
Startside-URL : tekststreng \
Ekstra faneblade : tekststreng

### Eksempel med startside plus 1 ekstra fane

Startside-URL: `https://borger.dk` \
Ekstra faneblade: `https://info.jobnet.dk/`

### Eksempel med startside plus 3 ekstra faner

URL'erne separes med `|` som herunder.

Ekstra faneblade : `https://info.jobnet.dk/|https://skat.dk|https://www.sundhed.dk/`


