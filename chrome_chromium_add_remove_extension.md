---
title: "Chrome/Chromium: Tilføj/Fjern Udvidelse(r)"
version: 1
parent: "Browser"
source: scripts/chrome_chromium_add_remove_extension.sh
summary: "Tilføjer/fjerner en eller flere Chrome/Chromium-Udvidelser til/fra browserens ExtensionSettings policy"
parameters:
  - name: "Aktivér"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Udvidelser"
    type: "string"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Udviklet og testet i samarbejde med Aarhus kommune.

1. Kan tilføje/fjerne en liste af Chrome/Chromium-Udvidelser til/fra browserens ExtensionSettings policy.
2. Kan slette browserens ExtensionSettings policy.

(Læs det hele inden du kører scriptet)

### For installere udvidelser

For installere udvidelser skal scriptet køres med flueben i checkbox'en `Aktivér`.

Alle Chrome-udvidelser har et unikt ID der fremgår i URL'en i Chrome Web Store.

ID'et er det du finder inden for < >-symbolerne i URL'en herunder:
`https://chrome.google.com/webstore/detail/ublock-origin/`<ID_HER>`?hl=en`
Dvs. alt efter den sidste `/` og før `?`-symbolet.

**Eksempelvis for uBlock Origin vil URL'en se således ud:**

https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm?hl=en

ID'et for uBlock Origin, som du skal bruge ifm. kørsel af scriptet, er derved:
`cjpalhdlnbpafiamejdnhcphjbkeiagm`

**Eksempel på en liste med 3 udvidelser, henholdsvis uBlock Origin, IntoWords, og AppWriter:**

`cjpalhdlnbpafiamejdnhcphjbkeiagm,nopjifljihndhkfeogabcclpgpceapln,lokadhdaghfjbmailhhenifjejpokche`

Ovenstående er den tekststreng man angiver ved kørsel i tekstparameteren "Udvidelser", hvis man vil installere de tre udvidelser.

Hver gang scriptet køres så overskrives den eksisterende liste med den nye liste.

### For at slette udvidelser

For at slette alle udvidelser køres scriptet uden flueben i checkbox'en "Aktivér".

Dette script er blevet testet og virker på Ubuntu 22.04.

### Mulige udvidelser

Nogle kommuner bruger udvidelsen "Adgang for Alle" til oplæsning på dansk:
https://chrome.google.com/webstore/detail/adgang-for-alle-opl%C3%A6sning/emlafdcpicmngaecnedehchapmmcjfhb?hl=da

Hvis man er kunde hos AppWriter eller IntoWords kan man overveje deres udvidelser for at øge tilgængeligheden i browser.

## Parametre
1. Aktivér : True/False
2. Udvidelser : komma-separeret liste af ID'er