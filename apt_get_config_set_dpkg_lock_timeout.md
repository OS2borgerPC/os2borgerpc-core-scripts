---
title: "APT: Wait 5 min for dpkg lock"
version: 1
parent: "System"
source: scripts/apt_get_config_set_dpkg_lock_timeout.sh
parameters:
  - name: "Aktiver?"
    type: "boolean"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
  - "Kiosk"
included_in_image: true
hidden: "true"
---
## Beskrivelse
Indstillingen dpkg lock timeout påvirker, hvor længe apt-get kommandoen vil vente på, at dpkg låsen frigives, før den giver en timeout.

Som standard vil apt-get vente på ubestemt tid på dpkg låsen, hvilket kan forårsage problemer, hvis en anden proces holder låsen i en længere periode. Ved at indstille en timeout sikrer man, at apt-get kun vil vente i en specificeret periode (i dette tilfælde 300 sekunder), før den fejler med en timeout-fejl. Dette kan hjælpe med at forhindre, at apt-get kommandoer hænger på ubestemt tid og tillader bedre håndtering af låsekonflikter.

Dette script benyttes af OS2BorgerPC image 5.3.0.

## Parametre
1. Sæt hak for at aktivere.

