# CI-SIS Gestion-d-Agendas-Partages - DeclarantGAP - Gestion d'Agendas Partagés (GAP) v3.0.0

## CapabilityStatement: CI-SIS Gestion-d-Agendas-Partages - DeclarantGAP 

 
Le déclarant peut initier une demande de création d’une nouvelle ressource à un gestionnaire de ressource ou d’une plage de disponibilité d’une ressource à un gestionnaire d’agenda. Il peut également modifier ou supprimer une ressource ou une plage de disponibilité d’une ressource existante. Le déclarant peut être soit le responsable de la ressource, soit un gestionnaire d’agenda ou un gestionnaire de ressources auprès duquel une ressource ou une plage de disponibilité d’une ressource a été déclarée et qui diffuse cette information à un autre gestionnaire d’agenda, ou à un autre gestionnaire de ressources. 

 [Raw OpenAPI-Swagger Definition file](../Gap-Declarant.openapi.json) | [Download](../Gap-Declarant.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "Gap-Declarant",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/gap/CapabilityStatement/Gap-Declarant",
  "version" : "3.0.0",
  "name" : "GAP_Declarant",
  "title" : "CI-SIS Gestion-d-Agendas-Partages - DeclarantGAP",
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
  "description" : "Le déclarant peut initier une demande de création d’une nouvelle ressource à un gestionnaire de ressource ou d’une plage de disponibilité d’une ressource à un gestionnaire d’agenda.\nIl peut également modifier ou supprimer une ressource ou une plage de disponibilité d’une ressource existante. \nLe déclarant peut être soit le responsable de la ressource, soit un gestionnaire d’agenda ou un gestionnaire de ressources auprès duquel une ressource ou une plage de disponibilité d’une ressource a été déclarée et qui diffuse cette information à un autre gestionnaire d’agenda, ou à un autre gestionnaire de ressources. ",
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
    "documentation" : "Crée, modifie et supprime une ressource - déclare les disponibilités d'une ressource",
    "security" : {
      "cors" : false,
      "description" : "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S\n) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\nd’information de santé (CI-SIS)"
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
    },
    {
      "type" : "Schedule",
      "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-schedule",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "delete"
      },
      {
        "code" : "patch"
      }]
    }]
  }]
}

```
