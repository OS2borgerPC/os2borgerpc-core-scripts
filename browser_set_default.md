---
title: "Sæt standard-browser"
parent: "Browser"
source: scripts/browser_set_default.sh
parameters:
  - name: "Ønsket standardbrowser"
    type: "text_field"
    default: "firefox,google-chrome"
    mandatory: false
  - name: "Alternativ standardbrowser (hvis din ønskede browser ikke er på listen)"
    type: "string"
    default: null
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
included_in_image: true
---

## Beskrivelse
Skifter standard-browseren ml. eksempelvis Firefox og Chrome. Installerer du andre browsere, virker scriptet også med disse.

Ved en frisk installation af BorgerPC er Firefox sat som standardbrowser. 
Hvis maskinen i stedet skal bruge f. eks. Chrome som standardbrowser, forudsætter det, at den browser først er installeret.

Det kan være nødvendigt med logud, før det tager effekt.

Dette script er blevet testet og virker på Ubuntu 22.04.
Anvendes i OS2BorgerPC image 5.0.0 og senere til at sætte Firefox til standardbrowseren. Det er hensigtsmæssigt, da Firefox er den eneste medfølgende browser på en OS2BorgerPC. Chrome skal særskilt installeres via script.

## Parametre
`firefox` skifter standardbrowseren til Firefox, `google-chrome` skifter den til Chrome.



