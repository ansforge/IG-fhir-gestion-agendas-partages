Instance: example-fr-schedule-2
InstanceOf: gap-fr-schedule
Usage: #inline
* meta.profile = "http://interopsante.org/fhir/StructureDefinition/FrSchedule"
* extension.url = "http://interopsante.org/fhir/StructureDefinition/FrServiceTypeDuration"
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