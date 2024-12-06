---
title: "Installer SSH og VNC på Kiosk"
parent: "Kiosk"
source: scripts/vnc_and_ssh_install.sh
parameters:
  - name: "VNC kodeord"
    type: "string"
    default: null
    mandatory: true
compatibility: 
  - "22.04"
  - "Kiosk"
---

## Beskrivelse
Installer SSH og VNC for fjernadgang. 

Du kan lave SSH-forbindelse med det almindelige Unix-password.

Giv VNC-kodeordet med som parameter.

Programmer der understøtter VNC:
- Multi platform: TigerVNC (Open source, https://tigervnc.org)
- Linux: Remmina (Open source, https://remmina.org)
- Windows: RealVNC Connect (ikke open source, https://www.realvnc.com/en/connect/)

Dette script er blevet testet og virker på Ubuntu 22.04.