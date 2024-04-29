Instance: example-fr-schedule-2
InstanceOf: gap-fr-schedule
Usage: #inline
* meta.profile = Canonical(gap-fr-schedule)
* extension.url = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-service-type-duration"
* extension.extension[0].url = "serviceType"
* extension.extension[=].valueCodeableConcept = $ServiceType#1 "suivi"
* extension.extension[+].url = "duration"
* extension.extension[=].valueDuration = 15 'min' "minute"
* identifier.use = #usual
* identifier.system = "http://example.org/scheduleid"
* identifier.value = "45"
* active = true
* specialty = $TRE-R38-SpecialiteOrdinale#SM54 "Médecine générale (SM)"
* actor[0] = Reference(https://exampleserver.org/fhir/PractitionerRole/1) "Dr Langdon, cabinet Paris"
* actor[+] = Reference(https://exampleserver.org/fhir/PractitionerRole/2) "Dr Langdon, cabinet Paris"
* planningHorizon.start = "2019-01-01T00:00:00Z"
* planningHorizon.end = "2020-01-01T00:00:00Z"