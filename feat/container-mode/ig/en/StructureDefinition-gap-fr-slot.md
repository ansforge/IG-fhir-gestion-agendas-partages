# GAP-FrSlot - Gestion d'Agendas Partagés (GAP) v3.0.0

## Resource Profile: GAP-FrSlot 

 
Profil décrivant un créneau 

**Usages:**

* Examples for this Profile: [Slot/example](Slot-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ans.fhir.fr.gap|current/StructureDefinition/StructureDefinition-gap-fr-slot.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-gap-fr-slot.csv), [Excel](../StructureDefinition-gap-fr-slot.xlsx), [Schematron](../StructureDefinition-gap-fr-slot.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gap-fr-slot",
  "url" : "https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-fr-slot",
  "version" : "3.0.0",
  "name" : "GAP_FrSlot",
  "title" : "GAP-FrSlot",
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
  "description" : "Profil décrivant un créneau",
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
  "type" : "Slot",
  "baseDefinition" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-slot",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Slot",
      "path" : "Slot"
    }]
  }
}

```
