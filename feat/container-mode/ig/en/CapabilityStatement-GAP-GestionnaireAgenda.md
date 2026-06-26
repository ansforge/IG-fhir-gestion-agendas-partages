# CI-SIS Gestion-d-Agendas-Partages - GestionnaireAgendaGAP - Gestion d'Agendas Partagés (GAP) v3.0.0

## CapabilityStatement: CI-SIS Gestion-d-Agendas-Partages - GestionnaireAgendaGAP 

 
Le gestionnaire d’agenda gère les demandes de déclaration, de modification ou de suppression de rendez-vous. 

 [Raw OpenAPI-Swagger Definition file](../GAP-GestionnaireAgenda.openapi.json) | [Download](../GAP-GestionnaireAgenda.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "GAP-GestionnaireAgenda",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/gap/CapabilityStatement/GAP-GestionnaireAgenda",
  "version" : "3.0.0",
  "name" : "GAP_GestionnaireAgenda",
  "title" : "CI-SIS Gestion-d-Agendas-Partages - GestionnaireAgendaGAP",
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
  "description" : "Le gestionnaire d’agenda gère les demandes de déclaration, de modification ou de   suppression de rendez-vous.",
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
    "documentation" : "Déclaration, modification et suppression des disponibilités d'une ressource",
    "security" : {
      "cors" : false,
      "description" : "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S ) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS)"
    },
    "resource" : [{
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
    },
    {
      "type" : "Slot",
      "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-slot",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "GAP_Slot_earliestStart",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/gap/SearchParameter/GAP-Slot-earliestStart",
        "type" : "date",
        "documentation" : "Recherche d'une disponibilité sur la date et l'heure de la disponibilité souhaité, date au plus tôt"
      },
      {
        "name" : "GAP_Slot_latestStart",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/gap/SearchParameter/GAP-Slot-latestStart",
        "type" : "date",
        "documentation" : "Recherche d'une disponibilité sur la date et l'heure de disponibilité souhaité, date au plus tard"
      },
      {
        "name" : "GAP_Schedule_Actor",
        "definition" : "http://hl7.org/fhir/SearchParameter/Schedule-actor",
        "type" : "reference",
        "documentation" : "Recherche d'une disponibilité sur les caractéristiques de la ressource Device qui est l'acteur d'agenda (identifiant, nom, modèle, type)"
      },
      {
        "name" : "Schedule-actor",
        "definition" : "http://hl7.org/fhir/SearchParameter/Schedule-actor",
        "type" : "reference",
        "documentation" : "Recherche d'un acteur de l'agenda"
      },
      {
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Slot-identifier",
        "type" : "token",
        "documentation" : "A Slot Identifier"
      },
      {
        "name" : "status",
        "definition" : "http://hl7.org/fhir/SearchParameter/Slot-status",
        "type" : "token",
        "documentation" : "The free/busy status of the appointment"
      }]
    },
    {
      "type" : "Appointment",
      "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-appointment",
      "interaction" : [{
        "code" : "create"
      },
      {
        "code" : "update"
      },
      {
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "conditionalUpdate" : true,
      "searchParam" : [{
        "name" : "GAP_Appointment_priority",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/gap/SearchParameter/GAP-Appointment-priority",
        "type" : "token",
        "documentation" : "Priority of the appointment"
      },
      {
        "name" : "GAP_Appointment_description",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/gap/SearchParameter/GAP-Appointment-description",
        "type" : "string",
        "documentation" : "Comment or title of the appointment"
      },
      {
        "name" : "GAP_Appointment_created",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/gap/SearchParameter/GAP-Appointment-created",
        "type" : "date",
        "documentation" : "Date that this appointment was initially created"
      },
      {
        "name" : "GAP_Appointment_Actor",
        "definition" : "http://hl7.org/fhir/SearchParameter/Appointment-actor",
        "type" : "reference",
        "documentation" : "Recherche d'un rendez-vous sur l'identifiant de l'acteur, la ressource pouvant être Patient, Practitioner, PractitionerRole, RelatedPerson, Location, Device ou HealthcareService"
      },
      {
        "name" : "GAP_Appointment_earliestStart",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/gap/SearchParameter/GAP-Appointment-earliestStart",
        "type" : "date",
        "documentation" : "Recherche d'un rendez-vous sur la date et heure de rendez-vous, date au plus tôt"
      },
      {
        "name" : "GAP_Appointment_latestStart",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/gap/SearchParameter/GAP-Appointment-latestStart",
        "type" : "date",
        "documentation" : "Recherche d'un rendez-vous sur la date et heure de rendez-vous, date au plus tard"
      },
      {
        "name" : "date",
        "definition" : "http://hl7.org/fhir/SearchParameter/Appointment-date",
        "type" : "date",
        "documentation" : "date et heure du rendez-vous"
      },
      {
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Appointment-identifier",
        "type" : "token",
        "documentation" : "identifiant du rendez-vous"
      },
      {
        "name" : "service-type",
        "definition" : "http://hl7.org/fhir/SearchParameter/Appointment-service-type",
        "type" : "token",
        "documentation" : "serivce spécifique qui doit être réslisé pandant le rendez-vous"
      },
      {
        "name" : "status",
        "definition" : "http://hl7.org/fhir/SearchParameter/Appointment-status",
        "type" : "token",
        "documentation" : "The overall status of the appointment"
      },
      {
        "name" : "supporting-info",
        "definition" : "http://hl7.org/fhir/SearchParameter/Appointment-supporting-info",
        "type" : "reference",
        "documentation" : "Additional information to support the appointment"
      }]
    }]
  }]
}

```
