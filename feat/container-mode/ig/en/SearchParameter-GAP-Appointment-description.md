# GAP-Appointment-description - Gestion d'Agendas Partagés (GAP) v3.0.0

## SearchParameter: GAP-Appointment-description 

 
Comment or title of the appointment 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "GAP-Appointment-description",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/gap/SearchParameter/GAP-Appointment-description",
  "version" : "3.0.0",
  "name" : "GAP_Appointment_description",
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
  "description" : "Comment or title of the appointment",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "FRANCE"
    }]
  }],
  "code" : "description",
  "base" : ["Appointment"],
  "type" : "string",
  "expression" : "Appointment.comment | Appointment.description",
  "xpathUsage" : "normal",
  "multipleOr" : false,
  "multipleAnd" : false
}

```
