---
title: "Juster adgang til kør prompt (ALT-F2)"
parent: "Sikkerhed"
source: scripts/dconf_run_prompt_toggle.sh
parameters:
  - name: "Slå kør prompt fra"
    type: "boolean"
    default: null
    mandatory: false
included_in_image: true
compatibility:  
  - "22.04"
  - "BorgerPC"
included_in_image: true
---

## Beskrivelse
Slår "kør"-prompten (ALT-F2) fra eller til.

### Sikkerhedsmæssige overvejelser
Dette script fjerner genvejen til "Kør" prompten, hvorfra man kan køre kommandoer. 

Det bør bruges sammen med scriptet "Juster adgang til terminalen", da man fra terminalen kan gøre det samme og mere.

Bemærk at efter det slås fra, kan man stadig godt kan gå ind og forsøge at sætte en genvejstast til "kør kommando", 
men selvom genvejstast-kombinationen nu vises, som om den var sat, virker den i praksis ikke.

Dette script er indbygget i OS2borgerPC image 5.0.0 og fremover.

Dette script er blevet testet og virker på Ubuntu 22.04.

Udviklet og testet i samarbejde med Aarhus kommune.

## Parametre
  Slå kør prompt fra : 
  - Sæt hak for at slå kør prompten fra
  - Lad stå tom for at slå kør prompten til