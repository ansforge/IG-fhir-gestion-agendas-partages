# CI-SIS Gestion-d-Agendas-Partages - GestionnaireRessourcesGAP - Gestion d'Agendas Partagés (GAP) v3.0.0

## CapabilityStatement: CI-SIS Gestion-d-Agendas-Partages - GestionnaireRessourcesGAP 

 
Le gestionnaire de ressources gère les demandes de gestion de ressources (lieu, équipement, personne prise en charge, professionnel, etc.). 

 [Raw OpenAPI-Swagger Definition file](../GAP-GestionnaireRessources.openapi.json) | [Download](../GAP-GestionnaireRessources.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "GAP-GestionnaireRessources",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/gap/CapabilityStatement/GAP-GestionnaireRessources",
  "version" : "3.0.0",
  "name" : "GAP_GestionnaireRessources",
  "title" : "CI-SIS Gestion-d-Agendas-Partages - GestionnaireRessourcesGAP",
  "status" : "active",
  "experimental" : false,
  "date" : "2023-08-02",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Le gestionnaire de ressources gère les demandes de gestion de ressources (lieu,   équipement, personne prise en charge, professionnel, etc.).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "FRANCE"
    }]
  }],
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["application/fhir+xml", "application/fhir+json"],
  "implementationGuide" : ["https://interop.esante.gouv.fr/ig/fhir/gap"],
  "rest" : [{
    "mode" : "server",
    "documentation" : "Crée, modifie et supprime une ressource",
    "security" : {
      "cors" : false,
      "description" : "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S ) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS)"
    },
    "resource" : [{
      "type" : "Patient",
      "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "delete"
      }]
    },
    {
      "type" : "Practitioner",
      "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "delete"
      }]
    },
    {
      "type" : "PractitionerRole",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-practitionerrole",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "delete"
      }]
    },
    {
      "type" : "RelatedPerson",
      "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "delete"
      }]
    },
    {
      "type" : "Location",
      "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "delete"
      }]
    },
    {
      "type" : "HealthcareService",
      "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-healthcare-service",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "delete"
      }]
    },
    {
      "type" : "Organization",
      "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "delete"
      }]
    },
    {
      "type" : "Device",
      "profile" : "http://hl7.org/fhir/StructureDefinition/Device",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "delete"
      }]
    }]
  }]
}

```
