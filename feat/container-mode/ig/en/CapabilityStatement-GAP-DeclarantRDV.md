# CI-SIS Gestion-d-Agendas-Partages - DeclarantRDVGAP - Gestion d'Agendas Partagés (GAP) v3.0.0

## CapabilityStatement: CI-SIS Gestion-d-Agendas-Partages - DeclarantRDVGAP 

 
Un déclarant de rendez-vous fait une demande auprès d’un gestionnaire d’agenda pour créer (demande d'un nouveau rendez-vous ou déclaration d'un rendez-vous pris) ou mettre à jour un rendez-vous 

 [Raw OpenAPI-Swagger Definition file](../GAP-DeclarantRDV.openapi.json) | [Download](../GAP-DeclarantRDV.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "GAP-DeclarantRDV",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/gap/CapabilityStatement/GAP-DeclarantRDV",
  "version" : "3.0.0",
  "name" : "GAP_DeclarantRDV",
  "title" : "CI-SIS Gestion-d-Agendas-Partages - DeclarantRDVGAP",
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
  "description" : "Un déclarant de rendez-vous fait une demande auprès d’un gestionnaire d’agenda pour créer (demande d'un nouveau rendez-vous ou déclaration d'un rendez-vous pris) ou mettre à jour un rendez-vous",
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
    "mode" : "client",
    "documentation" : "Création mise à jour de RDV",
    "security" : {
      "cors" : false,
      "description" : "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S\n) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\nd’information de santé (CI-SIS)"
    },
    "resource" : [{
      "type" : "Appointment",
      "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-appointment",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "create"
      },
      {
        "code" : "update"
      }],
      "conditionalUpdate" : true
    }]
  }]
}

```
