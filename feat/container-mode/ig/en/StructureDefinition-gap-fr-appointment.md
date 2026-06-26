# GAP-FrAppointment - Gestion d'Agendas Partagés (GAP) v3.0.0

## Resource Profile: GAP-FrAppointment 

 
Profil décrivant un rendez-vous médical 

**Usages:**

* Examples for this Profile: [Appointment/example-req-appointment](Appointment-example-req-appointment.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.gap|current/StructureDefinition/StructureDefinition-gap-fr-appointment.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-gap-fr-appointment.csv), [Excel](../StructureDefinition-gap-fr-appointment.xlsx), [Schematron](../StructureDefinition-gap-fr-appointment.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gap-fr-appointment",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-fr-appointment",
  "version" : "3.0.0",
  "name" : "GAP_FrAppointment",
  "title" : "GAP-FrAppointment",
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
  "description" : "Profil décrivant un rendez-vous médical",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "FRANCE"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "ical",
    "uri" : "http://ietf.org/rfc/2445",
    "name" : "iCalendar"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Appointment",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-appointment",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Appointment",
      "path" : "Appointment"
    }]
  }
}

```
