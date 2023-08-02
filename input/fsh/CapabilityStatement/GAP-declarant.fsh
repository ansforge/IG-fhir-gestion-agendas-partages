Instance: Gap-Declarant
InstanceOf: CapabilityStatement
Usage: #definition
* name = "GAP-Declarant"
* title = "CI-SIS Gestion-d-Agendas-Partages - DeclarantGAP"
* status = #active
* experimental = false
* description = "Le déclarant peut initier une demande de création d’une nouvelle ressource à un gestionnaire de ressource ou d’une plage de disponibilité d’une ressource à un gestionnaire d’agenda.\nIl peut également modifier ou supprimer une ressource ou une plage de disponibilité d’une ressource existante. \nLe déclarant peut être soit le responsable de la ressource, soit un gestionnaire d’agenda ou un gestionnaire de ressources auprès duquel une ressource ou une plage de disponibilité d’une ressource a été déclarée et qui diffuse cette information à un autre gestionnaire d’agenda, ou à un autre gestionnaire de ressources. "
* date = "2023-08-02"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* implementationGuide = "https://interop.esante.gouv.fr/ig/fhir/agenda"
* rest.mode = #client
* rest.documentation = "Crée, modifie et supprime une ressource - déclare les disponibilités d'une ressource"
* rest.security.cors = false
* rest.security.description = "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S\n) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\nd’information de santé (CI-SIS)"

* rest.resource[0].type = #Patient
* rest.resource[=].profile = "http://interopsante.org/fhir/StructureDefinition/FrPatient"
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #delete

* rest.resource[+].type = #Practitioner
* rest.resource[=].profile = "http://interopsante.org/fhir/StructureDefinition/FrPractitioner"
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #delete

* rest.resource[+].type = #PractitionerRole
* rest.resource[=].profile = "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-practitionerrole"
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #delete

* rest.resource[+].type = #RelatedPerson
* rest.resource[=].profile = "http://interopsante.org/fhir/StructureDefinition/FrRelatedPerson"
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #delete

* rest.resource[+].type = #Location
* rest.resource[=].profile = "http://interopsante.org/fhir/StructureDefinition/FrLocation"
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #delete

* rest.resource[+].type = #HealthcareService
* rest.resource[=].profile = "http://interopsante.org/fhir/StructureDefinition/FrHealthcareService"
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #delete

* rest.resource[+].type = #Organization
* rest.resource[=].profile = "http://interopsante.org/fhir/StructureDefinition/FrOrganization"
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #delete

* rest.resource[+].type = #Device
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/Device"
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #delete

* rest.resource[+].type = #Schedule
* rest.resource[=].profile = "http://interopsante.org/fhir/StructureDefinition/FrSchedule"
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].interaction[+].code = #patch