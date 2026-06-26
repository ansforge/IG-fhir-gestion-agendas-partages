# GAP-FrSchedule - Gestion d'Agendas Partagés (GAP) v3.0.0

## Resource Profile: GAP-FrSchedule 

 
Profil décrivant un agenda médical 

**Usages:**

* Examples for this Profile: [Schedule/example](Schedule-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.gap|current/StructureDefinition/StructureDefinition-gap-fr-schedule.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-gap-fr-schedule.csv), [Excel](../StructureDefinition-gap-fr-schedule.xlsx), [Schematron](../StructureDefinition-gap-fr-schedule.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gap-fr-schedule",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-fr-schedule",
  "version" : "3.0.0",
  "name" : "GAP_FrSchedule",
  "title" : "GAP-FrSchedule",
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
  "description" : "Profil décrivant un agenda médical",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "FR",
      "display" : "FRANCE"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Schedule",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-schedule",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Schedule",
      "path" : "Schedule"
    }]
  }
}

```
