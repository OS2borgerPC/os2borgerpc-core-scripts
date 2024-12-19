---
title: "Fjern besked om opdatering / opgradering"
parent: "Desktop"
source: scripts/remove_new_release_message.sh
parameters:
compatibility:  
  - "22.04"
  - "BorgerPC"
included_in_image: true
metadata:
  hidden: "true"
---

## Beskrivelse
Dette script fjerner popup om ny LTS-version. Det er meget vigtigt, da en BorgerPC-installation bliver uopretteligt ødelagt, hvis en medarbejder i bedste mening logger ind som superuser og trykker opdater.

Dette script er blevet testet og virker på Ubuntu 22.04. 
Indbygget i OS2BorgerPC image version 5.0.0 og nyere. Det er også kørt i forbindelse med opgradering fra Ubuntu 20.04 til 22.04.

## Parametre
Ingen.
