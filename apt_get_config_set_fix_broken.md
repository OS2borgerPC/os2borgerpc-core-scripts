---
title: "APT: Set fix-broken to true"
parent: "System"
source: scripts/apt_get_config_set_fix_broken.sh
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
Indstillingen fix-broken påvirker, hvordan apt-get håndterer afhængighedsproblemer under installation eller opgradering af pakker.

Når fix-broken er sat til "true", vil apt-get forsøge at rette eventuelle brudte afhængigheder automatisk. Dette kan være nyttigt, hvis der er manglende eller konfliktende pakker, da apt-get vil forsøge at finde og installere de nødvendige pakker for at løse disse problemer. Hvis indstillingen ikke er aktiveret, vil apt-get muligvis fejle, hvis der opstår afhængighedsproblemer, og brugeren skal manuelt løse disse problemer.

Dette script benyttes af OS2BorgerPC image 5.3.0.

## Parametre
1. Sæt hak for at aktivere.

