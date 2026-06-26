# example-frslot - Gestion d'Agendas Partagés (GAP) v3.0.0

## Example Slot: example-frslot

Profile: [GAP-FrSlot](StructureDefinition-gap-fr-slot.md)

**identifier**: `http://example.org/slots`/451 (use: usual, )

**serviceType**: suivi

**specialty**: Médecine générale (SM)

**schedule**: [https://exampleserver.org/fhir/Schedule/example](https://exampleserver.org/fhir/Schedule/example)

**status**: Free

**start**: 2019-01-04 09:15:00+0000

**end**: 2019-01-04 09:30:00+0000



## Resource Content

```json
{
  "resourceType" : "Slot",
  "id" : "example",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-fr-slot"]
  },
  "identifier" : [{
    "use" : "usual",
    "system" : "http://example.org/slots",
    "value" : "451"
  }],
  "serviceType" : [{
    "coding" : [{
      "system" : "http://example.org/ValueSet/ServiceType",
      "code" : "1",
      "display" : "suivi"
    }]
  }],
  "specialty" : [{
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale",
      "code" : "SM54",
      "display" : "Médecine générale (SM)"
    }]
  }],
  "schedule" : {
    "reference" : "https://exampleserver.org/fhir/Schedule/example"
  },
  "status" : "free",
  "start" : "2019-01-04T09:15:00Z",
  "end" : "2019-01-04T09:30:00Z"
}

```
