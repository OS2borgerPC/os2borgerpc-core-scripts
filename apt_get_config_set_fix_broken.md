---
title: "xxxx"
parent: "Anbefalede sikkerhedsscripts"
source: scripts/apt_get_config_set_fix_broken.sh
parameters:
  - name: "Aktiver?"
    type: "boolean"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
included_in_image: true
---

## Beskrivelse
Dette script installerer numlockx og slår numlock til når computeren når til loginsiden.

Dette script er blevet testet og virker på Ubuntu 22.04.

## Parametre
1. Sæt hak for at aktivere.

