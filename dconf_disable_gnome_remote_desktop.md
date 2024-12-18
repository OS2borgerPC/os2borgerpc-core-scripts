---
title: "Bloker for GNOME Remote Desktop (Fjernskrivebord)"
parent: "Anbefalede sikkerhedsscripts"
source: scripts/dconf_disable_gnome_remote_desktop.sh
parameters:
  - name: "Blokér for GNOME Remote Desktop?"
    type: "boolean"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Dette script blokerer for GNOME Remote Desktop.
Inden kørsel af dette script, kan GNOME Remote Desktop aktiveres, hvis Indstillinger ikke er blokeret. 
Indstillinger er dog blokeret for Borger i alle OS2borgerPC images siden 3.1.0.

Scriptet er ikke relevant for OS2borgerPC Kiosk.

## Parametre
1. Sæt hak for at blokere for Remote Desktop i Gnome, fjern for at tillade.
