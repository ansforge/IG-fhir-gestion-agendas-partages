# CI-SIS Gestion-d-Agendas-Partages - ConsommateurGAP - Gestion d'Agendas Partagés (GAP) v3.0.0

## CapabilityStatement: CI-SIS Gestion-d-Agendas-Partages - ConsommateurGAP 

 
Un consommateur consulte l’agenda d’une ressource gérée par un gestionnaire d’agenda. La consultation de l’agenda indique les éventuelles plages de disponibilité déclarées pour la
 ressource ainsi que ses indisponibilités et les détails des rendez-vous existants (types, durées, etc., cf. section 2.3.3). Le consommateur peut être la personne prise en charge, un
 professionnel intervenant dans la prise en charge d’une personne ou tout autre tiers autorisé à consulter l’agenda de la ressource concernée. 

 [Raw OpenAPI-Swagger Definition file](../GAP-Consommateur.openapi.json) | [Download](../GAP-Consommateur.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "GAP-Consommateur",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/gap/CapabilityStatement/GAP-Consommateur",
  "version" : "3.0.0",
  "name" : "GAP_consommateur",
  "title" : "CI-SIS Gestion-d-Agendas-Partages - ConsommateurGAP",
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
  "description" : "Un consommateur consulte l’agenda d’une ressource gérée par un gestionnaire d’agenda. La consultation de l’agenda indique les éventuelles plages de disponibilité déclarées pour la  \nressource ainsi que ses indisponibilités et les détails des rendez-vous existants (types, durées, etc., cf. section 2.3.3). Le consommateur peut être la personne prise en charge, un  \nprofessionnel intervenant dans la prise en charge d’une personne ou tout autre tiers autorisé à consulter l’agenda de la ressource concernée.",
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
    "documentation" : "consultation de disponibilités",
    "security" : {
      "cors" : false,
      "description" : "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S\n) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\nd’information de santé (CI-SIS)"
    },
    "resource" : [{
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
        "documentation" : "Recherche d'une disponibilité sur la date et l'heure de début de disponibilité souhaité"
      },
      {
        "name" : "GAP_Slot_latestStart",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/gap/SearchParameter/GAP-Slot-latestStart",
        "type" : "date",
        "documentation" : "Recherche d'une disponibilité sur la date et l'heure de fin de disponibilité souhaité"
      },
      {
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Slot-identifier",
        "type" : "token",
        "documentation" : "Identifiant du slot"
      },
      {
        "name" : "status",
        "definition" : "http://hl7.org/fhir/SearchParameter/Slot-status",
        "type" : "token",
        "documentation" : "Statut (occupé/libre) d'un slot"
      },
      {
        "name" : "schedule",
        "definition" : "http://hl7.org/fhir/SearchParameter/Slot-schedule",
        "type" : "reference",
        "documentation" : "Reference vers la ressource schedule correspondant à notre disponibilité"
      }]
    },
    {
      "type" : "Appointment",
      "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-appointment",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "GAP_Appointment_priority",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/gap/SearchParameter/GAP-Appointment-priority",
        "type" : "token",
        "documentation" : "Priorité du rendez vous"
      },
      {
        "name" : "GAP_Appointment_description",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/gap/SearchParameter/GAP-Appointment-description",
        "type" : "string",
        "documentation" : "Description du rendez vous (titre ou commentaire)"
      },
      {
        "name" : "GAP_Appointment_created",
        "definition" : "https://interop.esante.gouv.fr/ig/fhir/gap/SearchParameter/GAP-Appointment-created",
        "type" : "date",
        "documentation" : "Date de création du rendez vous"
      },
      {
        "name" : "actor",
        "definition" : "http://hl7.org/fhir/SearchParameter/Appointment-actor",
        "type" : "reference",
        "documentation" : "Recherche d'un rendez-vous sur l'identifiant de l'acteur"
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
        "documentation" : "status générale du rendez vous"
      },
      {
        "name" : "supporting-info",
        "definition" : "http://hl7.org/fhir/SearchParameter/Appointment-supporting-info",
        "type" : "reference",
        "documentation" : "information supplémentaire sur le rendez vous"
      }]
    },
    {
      "type" : "Schedule",
      "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-schedule",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "actor",
        "definition" : "http://hl7.org/fhir/SearchParameter/Schedule-actor",
        "type" : "reference",
        "documentation" : "Reference vers la ressource participant au creneau"
      }]
    },
    {
      "type" : "Patient",
      "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Patient-identifier",
        "type" : "token",
        "documentation" : "Identifiant du patient (matricule INS ou autre identifiant)"
      },
      {
        "name" : "family",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-family",
        "type" : "string",
        "documentation" : "Nom du patient"
      },
      {
        "name" : "given",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-given",
        "type" : "string",
        "documentation" : "Prenom du patient"
      }]
    },
    {
      "type" : "Practitioner",
      "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-practitioner",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Practitioner-identifier",
        "type" : "token",
        "documentation" : "Identifiant du professionnel"
      },
      {
        "name" : "family",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-family",
        "type" : "string",
        "documentation" : "Nom du patient"
      },
      {
        "name" : "given",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-given",
        "type" : "string",
        "documentation" : "Prenom du patient"
      }]
    },
    {
      "type" : "PractitionerRole",
      "profile" : "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-practitionerrole",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "role",
        "definition" : "http://hl7.org/fhir/SearchParameter/PractitionerRole-role",
        "type" : "token",
        "documentation" : "Profession du professionnel"
      },
      {
        "name" : "specialty",
        "definition" : "http://hl7.org/fhir/SearchParameter/PractitionerRole-specialty",
        "type" : "token",
        "documentation" : "Spécialité du professionnel"
      },
      {
        "name" : "location",
        "definition" : "http://hl7.org/fhir/SearchParameter/PractitionerRole-location",
        "type" : "reference",
        "documentation" : "Adresse situation exercice"
      },
      {
        "name" : "telecom",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-telecom",
        "type" : "token",
        "documentation" : "Telecommunication de la situation d'exercice"
      }]
    },
    {
      "type" : "RelatedPerson",
      "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/RelatedPerson-identifier",
        "type" : "token",
        "documentation" : "Identifiant de la personne de contact"
      },
      {
        "name" : "address",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-address",
        "type" : "string",
        "documentation" : "Adresse de la personne de contact"
      },
      {
        "name" : "telecom",
        "definition" : "http://hl7.org/fhir/SearchParameter/individual-telecom",
        "type" : "token",
        "documentation" : "Telecom de la personne de contact"
      },
      {
        "name" : "name",
        "definition" : "http://hl7.org/fhir/SearchParameter/RelatedPerson-name",
        "type" : "string",
        "documentation" : "Nom de la personne de contact"
      }]
    },
    {
      "type" : "Location",
      "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "address",
        "definition" : "http://hl7.org/fhir/SearchParameter/Location-address",
        "type" : "string",
        "documentation" : "Adresse situation exercice"
      },
      {
        "name" : "near",
        "definition" : "http://hl7.org/fhir/SearchParameter/Location-near",
        "type" : "special",
        "documentation" : "Adresse situation exercice via les coordonnées géographiques"
      },
      {
        "name" : "name",
        "definition" : "http://hl7.org/fhir/SearchParameter/Location-name",
        "type" : "string",
        "documentation" : "Nom du lieu"
      },
      {
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Location-identifier",
        "type" : "token",
        "documentation" : "Identifiant du lieu"
      }]
    },
    {
      "type" : "Device",
      "profile" : "http://hl7.org/fhir/StructureDefinition/Device",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Device-identifier",
        "type" : "token",
        "documentation" : "Identifiant de l'équipement opérationnel'"
      },
      {
        "name" : "type",
        "definition" : "http://hl7.org/fhir/SearchParameter/Device-type",
        "type" : "token",
        "documentation" : "Type de l'équipement opérationnel'"
      },
      {
        "name" : "device-name",
        "definition" : "http://hl7.org/fhir/SearchParameter/Device-device-name",
        "type" : "string",
        "documentation" : "Libelle de l'équipement opérationnel'"
      },
      {
        "name" : "model",
        "definition" : "http://hl7.org/fhir/SearchParameter/Device-model",
        "type" : "string",
        "documentation" : "Modele de l'équipement opérationnel'"
      }]
    },
    {
      "type" : "HealthcareService",
      "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-healthcare-service",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/HealthcareService-identifier",
        "type" : "token",
        "documentation" : "Identifiant de l'organisation interne"
      },
      {
        "name" : "name",
        "definition" : "http://hl7.org/fhir/SearchParameter/HealthcareService-name",
        "type" : "string",
        "documentation" : "Nom de l'organisation interne"
      },
      {
        "name" : "service-type",
        "definition" : "http://hl7.org/fhir/SearchParameter/HealthcareService-service-type",
        "type" : "token",
        "documentation" : "Champ d'activite de l'organisation interne"
      },
      {
        "name" : "organization",
        "definition" : "http://hl7.org/fhir/SearchParameter/HealthcareService-organization",
        "type" : "reference",
        "documentation" : "Référence vers l'entite géographique de l'organisation interne"
      }]
    },
    {
      "type" : "Organization",
      "profile" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-organization",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/Organization-identifier",
        "type" : "token",
        "documentation" : "Identifiant de l'entite geographique (idNatStruct)"
      },
      {
        "name" : "name",
        "definition" : "http://hl7.org/fhir/SearchParameter/Organization-name",
        "type" : "string",
        "documentation" : "Nom de l'entite geographique"
      },
      {
        "name" : "address",
        "definition" : "http://hl7.org/fhir/SearchParameter/Organization-address",
        "type" : "string",
        "documentation" : "Adresse de l'entite geographique"
      }]
    }]
  }]
}

```
