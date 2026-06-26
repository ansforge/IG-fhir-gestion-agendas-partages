# GAP-Appointment-earliestStart - Gestion d'Agendas Partagés (GAP) v3.0.0

## SearchParameter: GAP-Appointment-earliestStart 

 
Earliest start of an appointment 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "GAP-Appointment-earliestStart",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/gap/SearchParameter/GAP-Appointment-earliestStart",
  "version" : "3.0.0",
  "name" : "GAP_Appointment_earliestStart",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-26T12:12:37+00:00",
  "publisher" : "ANS",
  "contact" : [{
    "name" : "ANS",
    "telecom" : [{
      "system" : "url",
      "value" : "https://esante.gouv.fr"
    }]
  }],
  "description" : "Earliest start of an appointment",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "FRANCE"
    }]
  }],
  "code" : "start",
  "base" : ["Appointment"],
  "type" : "date",
  "expression" : "Appointment.start",
  "xpathUsage" : "normal",
  "multipleOr" : true,
  "multipleAnd" : true,
  "comparator" : ["gt", "ge"]
}

```
