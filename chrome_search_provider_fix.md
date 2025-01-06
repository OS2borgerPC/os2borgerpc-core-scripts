---
title: "Chrome: Fjern spørgsmål om søgemaskine"
parent: "Browser"
source: scripts/chrome_search_provider_fix.sh
compatibility:  
  - "22.04"
  - "BorgerPC"
---

## Beskrivelse
Nyere udgaver af Chrome vil spørge om valg af søgemaskine, hver gang de startes af Borger.

Dette script fjerner dette spørgsmål ved at sætte standard-søgemaskinen for Chrome til Google (den tidligere standardopførsel for Chrome), hvis Chrome er installeret.

Den ændring, som dette script foretager, er også indbygget i "Chrome: Installer", så dette er udelukkende et midlertidigt script, som anvendes til at tilføje ændringen til eksisterende computere.

Hvis scriptet køres på en OS2borgerPC Kiosk eller en OS2borgerPC, hvor Chrome ikke er installeret, vil scriptet ikke have nogen effekt.