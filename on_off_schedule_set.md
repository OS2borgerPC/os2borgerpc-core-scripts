---
title: "Tænd/Sluk tidsplaner - Opret tidsplan"
parent: "System"
source: scripts/on_off_schedule_set.sh
parameters:
  - name: "Mandag tænd"
    type: "string"
    default: null
    mandatory: true
  - name: "Mandag sluk"
    type: "string"
    default: null
    mandatory: true
  - name: "Tirsdag tænd"
    type: "string"
    default: null
    mandatory: true
  - name: "Tirsdag sluk"
    type: "string"
    default: null
    mandatory: true
  - name: "Onsdag tænd"
    type: "string"
    default: null
    mandatory: true
  - name: "Onsdag sluk"
    type: "string"
    default: null
    mandatory: true
  - name: "Torsdag tænd"
    type: "string"
    default: null
    mandatory: true
  - name: "Torsdag sluk"
    type: "string"
    default: null
    mandatory: true
  - name: "Fredag tænd"
    type: "string"
    default: null
    mandatory: true
  - name: "Fredag sluk"
    type: "string"
    default: null
    mandatory: true
  - name: "Lørdag tænd"
    type: "string"
    default: null
    mandatory: true
  - name: "Lørdag sluk"
    type: "string"
    default: null
    mandatory: true
  - name: "Søndag tænd"
    type: "string"
    default: null
    mandatory: true
  - name: "Søndag sluk"
    type: "string"
    default: null
    mandatory: true
  - name: "Undtagelser: Lukkedage og Ændrede åbningstider"
    type: "string"
    default: null
    mandatory: true
  - name: "mode"
    type: "string"
    default: null
    mandatory: true
compatibility:
  - "22.04"
  - "BorgerPC"
metadata:
  uid: "wake_plan_set"
  security: false
  hidden: true
---

## Beskrivelse

Opret tænd sluk tidsplan
