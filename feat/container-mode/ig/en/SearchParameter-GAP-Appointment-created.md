# GAP-Appointment-created - Gestion d'Agendas Partagés (GAP) v3.0.0

## SearchParameter: GAP-Appointment-created 

 
Date that this appointment was initially created 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "GAP-Appointment-created",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/gap/SearchParameter/GAP-Appointment-created",
  "version" : "3.0.0",
  "name" : "GAP_Appointment_created",
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
  "description" : "Date that this appointment was initially created",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "FRANCE"
    }]
  }],
  "code" : "created",
  "base" : ["Appointment"],
  "type" : "date",
  "expression" : "Appointment.created"
}

```
