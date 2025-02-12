---
title: "Fjern Luk Ned, Genstart og Hviletilstand fra menuen"
version: 1
parent: "Sikkerhed"
source: scripts/polkit_policy_shutdown_suspend.sh
parameters:
  - name: "Fjern hviletilstand?"
    type: "boolean"
    default: null
    mandatory: false
  - name: "Fjern også luk ned og genstart?"
    type: "boolean"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
included_in_image: true
---

## Beskrivelse
Scriptet fjerner Luk Ned, Genstart og Hviletilstand fra menuen og blokerer også for de samme via systempolitik, så eks. genstart/luk ned i så fald heller ikke kan køres fra terminalen af Borger.

### Sikkerhedsmæssige overvejelser
Disse muligheder er fjernet fra OS2BorgerPC image 5.0.0 og fremadrettet af den årsag, at sikkerhedsscripts ikke kan overvåge maskinen, når den er slukket. Dvs. en angriber kunne potentielt slukke maskinen, indsætte en keylogger ml. tastatur og computer, og så tænde computeren igen.
Af samme grund har vi også udviklet scriptet "Bloker for login ved hård nedlukning" for at forhindre at der lukkes ned på andre måder end menuen, dvs. ved at trykke på knappen eller hive strømstikket ud.

Dette script er blevet testet og virker på Ubuntu 22.04.
Det er indbygget i OS2BorgerPC image v. 5.0.0 og fremadrettet. Det er dog blevet løbende udbygget.
Udviklet og testet i samarbejde med Aarhus kommune.

## Parametre

1. Fjern hviletilstand?
    Sæt hak for at blokere for borgerens mulighed for at aktivere hviletilstand.
    Lad stå tom for at tilføje muligheden.
2. Fjern også luk ned og genstart?
    Sæt hak for også at blokere for borgerens mulighed for at lukke eller genstarte computeren.
    Lad stå tom for at tilføje muligheden.
    Hvis første input står tom, tilføjes muligheden uanset værdien af dette input.

