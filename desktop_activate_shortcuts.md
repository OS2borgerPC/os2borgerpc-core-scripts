---
title: "Aktiver genveje på Desktop"
parent: "Desktop"
source: scripts/desktop_activate_shortcuts.sh
parameters:
compatibility:  
  - "22.04"
  - "BorgerPC"
included_in_image: true
hidden: "true"
---

## Beskrivelse
"Aktiverer" genveje på skrivebordet.

Inden dette script køres kan man godt tilføje en genvej, men det rette ikon vil ikke dukke op, og programmet vil i stedet blive åbnet i et tekstredigeringsprogram.

Der skal logges ud og ind igen - eller alternativt genstartes - før det tager effekt.
Scriptet skal kun køres én gang - så virker genveje der er tilføjet til skrivebordet både før og efter.

Dette script er blevet testet og virker på Ubuntu 22.04.

Indbygget i OS2BorgerPC image 5.0.0 og senere. 