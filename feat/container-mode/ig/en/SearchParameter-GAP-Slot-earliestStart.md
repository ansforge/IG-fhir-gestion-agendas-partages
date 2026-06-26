# GAP-Slot-earliestStart - Gestion d'Agendas Partagés (GAP) v3.0.0

## SearchParameter: GAP-Slot-earliestStart 

 
earliest start of a potential appointment 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "GAP-Slot-earliestStart",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/gap/SearchParameter/GAP-Slot-earliestStart",
  "version" : "3.0.0",
  "name" : "GAP_Slot_earliestStart",
  "derivedFrom" : "http://hl7.org/fhir/SearchParameter/Slot-start",
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
  "description" : "earliest start of a potential appointment",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "FRANCE"
    }]
  }],
  "code" : "start",
  "base" : ["Slot"],
  "type" : "date",
  "expression" : "Slot.start",
  "xpathUsage" : "normal",
  "multipleOr" : true,
  "multipleAnd" : true,
  "comparator" : ["gt", "ge"]
}

```
