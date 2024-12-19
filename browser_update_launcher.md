---
title: "Udskift browser-genvejen i venstremenuen med en valgfri browser"
parent: "Browser"
source: scripts/browser_update_launcher.sh
parameters:
  - name: "Udskift browseren i venstremenuen med følgende browser (se muligheder i beskrivelse)"
    type: "text_field"
    default: "firefox,google-chrome"
    mandatory: false
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Udskifter browser-knappen i venstremenuen (der som standard er Firefox) med en valgfri browser.

Valgmulighederne er:
- firefox
- google-chrome

Dette script er blevet testet og virker på Ubuntu 22.04.