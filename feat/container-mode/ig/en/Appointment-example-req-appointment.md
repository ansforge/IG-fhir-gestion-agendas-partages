# example-req-appointment - Gestion d'Agendas Partagés (GAP) v3.0.0

## Example Appointment: example-req-appointment

Profiles: [GAP-FrAppointment](StructureDefinition-gap-fr-appointment.md), [FR Core Appointment Profile](https://hl7.fr/ig/fhir/core/2.0.1/StructureDefinition-fr-core-appointment.html)

**FR Core Appointment Operator Extension**: [https://exampleserver.org/fhir/Patient/1](https://exampleserver.org/fhir/Patient/1)

**identifier**: `http://example.org/sampleappointment-identifier`/123

**status**: Proposed

**serviceType**: suivi

**specialty**: Médecine générale (SM)

**priority**: 5

**minutesDuration**: 15

**slot**: [https://exampleserver.org/fhir/Slot/example](https://exampleserver.org/fhir/Slot/example)

**created**: 2019-01-02

> **participant****actor**: [M Martin](https://exampleserver.org/fhir/Patient/1)**required**: Required**status**: Accepted

> **participant****actor**: [Dr Langdon, cabinet Paris](https://exampleserver.org/fhir/PractitionerRole/1)**required**: Required**status**: Needs Action

> **participant****actor**: [Dr Langdon](https://exampleserver.org/fhir/Practitioner/1)**required**: Required**status**: Needs Action

**requestedPeriod**: 2019-01-04 09:15:00+0000 --> (ongoing)



## Resource Content

```json
{
  "resourceType" : "Appointment",
  "id" : "example-req-appointment",
  "meta" : {
    "profile" : ["https://interop.esante.gouv.fr/ig/fhir/gap/StructureDefinition/gap-fr-appointment",
    "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-appointment"]
  },
  "extension" : [{
    "url" : "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-appointment-operator",
    "valueReference" : {
      "reference" : "https://exampleserver.org/fhir/Patient/1"
    }
  }],
  "identifier" : [{
    "system" : "http://example.org/sampleappointment-identifier",
    "value" : "123"
  }],
  "status" : "proposed",
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
  "priority" : 5,
  "minutesDuration" : 15,
  "slot" : [{
    "reference" : "https://exampleserver.org/fhir/Slot/example"
  }],
  "created" : "2019-01-02",
  "participant" : [{
    "actor" : {
      "reference" : "https://exampleserver.org/fhir/Patient/1",
      "display" : "M Martin"
    },
    "required" : "required",
    "status" : "accepted"
  },
  {
    "actor" : {
      "reference" : "https://exampleserver.org/fhir/PractitionerRole/1",
      "display" : "Dr Langdon, cabinet Paris"
    },
    "required" : "required",
    "status" : "needs-action"
  },
  {
    "actor" : {
      "reference" : "https://exampleserver.org/fhir/Practitioner/1",
      "display" : "Dr Langdon"
    },
    "required" : "required",
    "status" : "needs-action"
  }],
  "requestedPeriod" : [{
    "start" : "2019-01-04T09:15:00Z"
  }]
}

```
