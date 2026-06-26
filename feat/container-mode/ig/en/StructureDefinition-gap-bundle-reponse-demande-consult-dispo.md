# GAP-BundleResultatReponseADemandeConsultationDisponibilites - Gestion d'Agendas Partagés (GAP) v3.0.0

## Resource Profile: GAP-BundleResultatReponseADemandeConsultationDisponibilites 

 
Profil du bundle de réponse à la demande de consultation des disponibilités d’une ou de plusieurs ressources. Sur la durée demandée, elle devra contenir les informations sur le temps libre ou occupé de chacune des ressources. La réponse contient donc les disponibilités (Slot) des ressources répondant aux critères de recherche de la demande. Les Slot portant le statut free représentent les disponibilités (status=free). Status=busy pour les indisponibilités correspondant à des rendez-vous pris 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.gap|current/StructureDefinition/StructureDefinition-gap-bundle-reponse-demande-consult-dispo.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-gap-bundle-reponse-demande-consult-dispo.csv), [Excel](../StructureDefinition-gap-bundle-reponse-demande-consult-dispo.xlsx), [Schematron](../StructureDefinition-gap-bundle-reponse-demande-consult-dispo.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gap-bundle-reponse-demande-consult-dispo",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-bundle-reponse-demande-consult-dispo",
  "version" : "3.0.0",
  "name" : "GAP_BundleResultatReponseADemandeConsultationDisponibilite",
  "title" : "GAP-BundleResultatReponseADemandeConsultationDisponibilites",
  "status" : "active",
  "date" : "2026-06-26T12:12:37+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Profil du bundle de réponse à la demande de consultation des disponibilités d’une ou de plusieurs ressources. Sur la durée demandée, elle devra contenir les informations sur le temps libre ou occupé de chacune des ressources. La réponse contient donc les disponibilités (Slot) des ressources répondant aux critères de recherche de la demande. Les Slot portant le statut free représentent les disponibilités (status=free). Status=busy pour les indisponibilités correspondant à des rendez-vous pris",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "FRANCE"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "patternCode" : "searchset"
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resource"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Bundle.entry:Slot",
      "path" : "Bundle.entry",
      "sliceName" : "Slot",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:Slot.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Slot",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-slot"]
      }]
    },
    {
      "id" : "Bundle.entry:Slot.search.mode",
      "path" : "Bundle.entry.search.mode",
      "patternCode" : "match"
    },
    {
      "id" : "Bundle.entry:Slot.request",
      "path" : "Bundle.entry.request",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Slot.response",
      "path" : "Bundle.entry.response",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Schedule",
      "path" : "Bundle.entry",
      "sliceName" : "Schedule",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:Schedule.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Schedule",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-schedule"]
      }]
    },
    {
      "id" : "Bundle.entry:Schedule.search.mode",
      "path" : "Bundle.entry.search.mode",
      "patternCode" : "include"
    },
    {
      "id" : "Bundle.entry:Schedule.request",
      "path" : "Bundle.entry.request",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Schedule.response",
      "path" : "Bundle.entry.response",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Patient",
      "path" : "Bundle.entry",
      "sliceName" : "Patient",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:Patient.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Patient",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-patient"]
      }]
    },
    {
      "id" : "Bundle.entry:Patient.search.mode",
      "path" : "Bundle.entry.search.mode",
      "patternCode" : "include"
    },
    {
      "id" : "Bundle.entry:Patient.request",
      "path" : "Bundle.entry.request",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Patient.response",
      "path" : "Bundle.entry.response",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Practitioner",
      "path" : "Bundle.entry",
      "sliceName" : "Practitioner",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:Practitioner.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Practitioner",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitioner"]
      }]
    },
    {
      "id" : "Bundle.entry:Practitioner.search.mode",
      "path" : "Bundle.entry.search.mode",
      "patternCode" : "include"
    },
    {
      "id" : "Bundle.entry:Practitioner.request",
      "path" : "Bundle.entry.request",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Practitioner.response",
      "path" : "Bundle.entry.response",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:PractitionerRole",
      "path" : "Bundle.entry",
      "sliceName" : "PractitionerRole",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:PractitionerRole.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "PractitionerRole",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-practitionerrole"]
      }]
    },
    {
      "id" : "Bundle.entry:PractitionerRole.search.mode",
      "path" : "Bundle.entry.search.mode",
      "patternCode" : "include"
    },
    {
      "id" : "Bundle.entry:PractitionerRole.request",
      "path" : "Bundle.entry.request",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:PractitionerRole.response",
      "path" : "Bundle.entry.response",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Device",
      "path" : "Bundle.entry",
      "sliceName" : "Device",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:Device.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Device"
      }]
    },
    {
      "id" : "Bundle.entry:Device.search.mode",
      "path" : "Bundle.entry.search.mode",
      "patternCode" : "include"
    },
    {
      "id" : "Bundle.entry:Device.request",
      "path" : "Bundle.entry.request",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Device.response",
      "path" : "Bundle.entry.response",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Location",
      "path" : "Bundle.entry",
      "sliceName" : "Location",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:Location.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Location",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-location"]
      }]
    },
    {
      "id" : "Bundle.entry:Location.search.mode",
      "path" : "Bundle.entry.search.mode",
      "patternCode" : "include"
    },
    {
      "id" : "Bundle.entry:Location.request",
      "path" : "Bundle.entry.request",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Location.response",
      "path" : "Bundle.entry.response",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:HealthcareService",
      "path" : "Bundle.entry",
      "sliceName" : "HealthcareService",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:HealthcareService.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "HealthcareService",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-healthcare-service"]
      }]
    },
    {
      "id" : "Bundle.entry:HealthcareService.search.mode",
      "path" : "Bundle.entry.search.mode",
      "patternCode" : "include"
    },
    {
      "id" : "Bundle.entry:HealthcareService.request",
      "path" : "Bundle.entry.request",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:HealthcareService.response",
      "path" : "Bundle.entry.response",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Organization",
      "path" : "Bundle.entry",
      "sliceName" : "Organization",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:Organization.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Organization",
        "profile" : ["https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-organization"]
      }]
    },
    {
      "id" : "Bundle.entry:Organization.search.mode",
      "path" : "Bundle.entry.search.mode",
      "patternCode" : "include"
    },
    {
      "id" : "Bundle.entry:Organization.request",
      "path" : "Bundle.entry.request",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Organization.response",
      "path" : "Bundle.entry.response",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:RelatedPerson",
      "path" : "Bundle.entry",
      "sliceName" : "RelatedPerson",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:RelatedPerson.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "RelatedPerson",
        "profile" : ["https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-related-person"]
      }]
    },
    {
      "id" : "Bundle.entry:RelatedPerson.search.mode",
      "path" : "Bundle.entry.search.mode",
      "patternCode" : "include"
    },
    {
      "id" : "Bundle.entry:RelatedPerson.request",
      "path" : "Bundle.entry.request",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:RelatedPerson.response",
      "path" : "Bundle.entry.response",
      "max" : "0"
    }]
  }
}

```
