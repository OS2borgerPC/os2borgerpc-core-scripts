---
title: "Fix Light Display Manager Opstarts-fejl"
parent: "System"
source: scripts/lightdm_fix_boot_error.sh
parameters:
  - name: "Aktivér fix?"
    type: "boolean"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
included_in_image: true
hidden: "true"
---

## Beskrivelse
Scriptet fikser en opstartsfejl i OS2borgerPC, relateret til Light Display Manager (LightDM).
Fejlen opleves ved, at maskinen ikke kan boote, og ender i terminalen, typisk kort efter installationen.

Typisk ses en eller flere af disse fejlbeskeder i terminalen:

"Failed to start Detect the available GPUs and deal with any system changes"
"Failed to start Light Display Manager"
"Bluetooth: hci0: Malformed MSFT vendor event: 0x02" 

Indbygget i OS2BorgerPC image version 5.2.0 og senere.

## Parametre
1. Sæt hak for at aktivere fikset. Udelad hak for at deaktivere fikset.
