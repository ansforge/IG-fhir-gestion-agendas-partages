Instance: example-req-appointment
InstanceOf: gap-fr-appointment
Usage: #example
* meta.profile = Canonical(gap-fr-appointment)
* extension.url = "http://interopsante.org/fhir/StructureDefinition/FrAppointmentOperator"
* extension.valueReference = Reference(https://exampleserver.org/fhir/Patient/1)
* identifier.system = "http://example.org/sampleappointment-identifier"
* identifier.value = "123"
* status = #proposed
* serviceType = $ServiceType#1 "suivi"
* specialty = $TRE-R38-SpecialiteOrdinale#SM54 "Médecine générale (SM)"
* priority = 5
* minutesDuration = 15
* slot = Reference(https://exampleserver.org/fhir/Slot/example)
* created = "2019-01-02"
* participant[0].actor = Reference(https://exampleserver.org/fhir/Patient/1) "M Martin"
* participant[=].required = #required
* participant[=].status = #accepted
* participant[+].actor = Reference(https://exampleserver.org/fhir/PractitionerRole/1) "Dr Langdon, cabinet Paris"
* participant[=].required = #required
* participant[=].status = #needs-action
* participant[+].actor = Reference(https://exampleserver.org/fhir/Practitioner/1) "Dr Langdon"
* participant[=].required = #required
* participant[=].status = #needs-action
* requestedPeriod.start = "2019-01-04T09:15:00Z"