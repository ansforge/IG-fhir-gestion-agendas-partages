# example-fr-schedule - Gestion d'Agendas Partagés (GAP) v3.0.0

## Example Schedule: example-fr-schedule

Profile: [GAP-FrSchedule](StructureDefinition-gap-fr-schedule.md)

> **FR Core Schedule availability time Extension**
* identifier: dispo09112020
* type: [FR Core CodeSystem Schedule Type: free](https://hl7.fr/ig/fhir/core/2.0.1/CodeSystem-fr-core-cs-schedule-type.html#fr-core-cs-schedule-type-free) (Disponibilité)
* start: 2020-11-09 08:00:00+0100
* end: 2020-11-09 20:00:00+0100

> **FR Core Service Type Duration Extension**
* serviceType: suivi
* duration: No display for Duration (value: 15; unit: minute; system: http://unitsofmeasure.org; code: min)

**identifier**: `http://example.org/scheduleid`/45 (use: usual, )

**active**: true

**specialty**: Médecine générale (SM)

**actor**: 

* [Dr Langdon, cabinet Paris](https://exampleserver.org/fhir/PractitionerRole/1)
* [Dr Langdon](https://exampleserver.org/fhir/Practitioner/1)

**planningHorizon**: 2019-01-01 00:00:00+0000 --> 2020-01-01 00:00:00+0000



## Resource Content

```json
{
  "resourceType" : "Schedule",
  "id" : "example",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-fr-schedule"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "identifier",
      "valueIdentifier" : {
        "value" : "dispo09112020"
      }
    },
    {
      "url" : "type",
      "valueCoding" : {
        "system" : "https://hl7.fr/ig/fhir/core/CodeSystem/fr-core-cs-schedule-type",
        "code" : "free",
        "display" : "Disponibilité"
      }
    },
    {
      "url" : "start",
      "valueDateTime" : "2020-11-09T08:00:00+01:00"
    },
    {
      "url" : "end",
      "valueDateTime" : "2020-11-09T20:00:00+01:00"
    }],
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-schedule-availability-time"
  },
  {
    "extension" : [{
      "url" : "serviceType",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/ValueSet/ServiceType",
          "code" : "1",
          "display" : "suivi"
        }]
      }
    },
    {
      "url" : "duration",
      "valueDuration" : {
        "value" : 15,
        "unit" : "minute",
        "system" : "http://unitsofmeasure.org",
        "code" : "min"
      }
    }],
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-service-type-duration"
  }],
  "identifier" : [{
    "use" : "usual",
    "system" : "http://example.org/scheduleid",
    "value" : "45"
  }],
  "active" : true,
  "specialty" : [{
    "coding" : [{
      "system" : "https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale",
      "code" : "SM54",
      "display" : "Médecine générale (SM)"
    }]
  }],
  "actor" : [{
    "reference" : "https://exampleserver.org/fhir/PractitionerRole/1",
    "display" : "Dr Langdon, cabinet Paris"
  },
  {
    "reference" : "https://exampleserver.org/fhir/Practitioner/1",
    "display" : "Dr Langdon"
  }],
  "planningHorizon" : {
    "start" : "2019-01-01T00:00:00Z",
    "end" : "2020-01-01T00:00:00Z"
  }
}

```
