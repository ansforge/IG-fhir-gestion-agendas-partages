# GAP-Appointment-priority - Gestion d'Agendas Partagés (GAP) v3.0.0

## SearchParameter: GAP-Appointment-priority 

 
Priority of the appointment 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "GAP-Appointment-priority",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/gap/SearchParameter/GAP-Appointment-priority",
  "version" : "3.0.0",
  "name" : "GAP_Appointment_priority",
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
  "description" : "Priority of the appointment",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "FRANCE"
    }]
  }],
  "code" : "priority",
  "base" : ["Appointment"],
  "type" : "token",
  "expression" : "Appointment.priority",
  "xpathUsage" : "normal",
  "multipleOr" : false,
  "multipleAnd" : false
}

```
