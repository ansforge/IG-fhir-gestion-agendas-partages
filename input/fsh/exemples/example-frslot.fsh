Instance: example-frslot
InstanceOf: gap-fr-slot
Usage: #example
* id = "example"
* meta.profile = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-slot"
* identifier.use = #usual
* identifier.system = "http://example.org/slots"
* identifier.value = "451"
* serviceType = $ServiceType#1 "suivi"
* specialty = $TRE-R38-SpecialiteOrdinale#SM54 "Médecine générale (SM)"
* schedule = Reference(https://exampleserver.org/fhir/Schedule/example)
* status = #free
* start = "2019-01-04T09:15:00Z"
* end = "2019-01-04T09:30:00Z"