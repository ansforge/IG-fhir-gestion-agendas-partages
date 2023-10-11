![Logo_LEF_CI-SIS](https://user-images.githubusercontent.com/48218773/227532484-eff82649-4e42-49c6-966a-dc3ea78cf59c.png)

[![Workflow Init](https://github.com/ansforge/IG-fhir-gestion-agenda-partage/actions/workflows/fhir-workflows.yml/badge.svg)](https://github.com/ansforge/IG-fhir-gestion-agenda-partage/actions/workflows/fhir-workflows.yml)

# Contexte

## Contexte métier du projet

Ce guide d’implémentation a pour objet de permettre la gestion de ressources (personnes, lieux ou objets), la gestion des disponibilités de ces ressources, la consultation et la synchronisation d’agenda et la prise de rendez-vous.

## Contexte technique du projet

Les ressources concernées par ce guide sont : Patient, Practitioner, PractitionerRole, Location, HealthcareService, Organization, RelatedPerson, Schedule, Slot et Appointment.

# CI/CD

Les workflows associés à ce repository (.github/workflows) permettent : 

* D'executer Sushi pour vérifier la grammaire
* De faire les tests avec le validator_cli
* De publier les pages : https://ansforge.github.io/IG-fhir-gestion-agendas-partages/ig/{nom de la branche}
Exemple : [https://ansforge.github.io/IG-fhir-gestion-agendas-partages/ig/main]

## Acronymes

* IG : Implementation Guide
* FHIR : Fast Healthcare Interoperability Resources
* FIG : FHIR Implementation Guide
* HL7 : Health Level Seven
