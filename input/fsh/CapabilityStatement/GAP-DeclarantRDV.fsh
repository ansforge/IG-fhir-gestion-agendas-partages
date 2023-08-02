Instance: GAP.DeclarantRDVGAP
InstanceOf: CapabilityStatement
Usage: #definition
* name = "GAP-DeclarantRDV"
* title = "CI-SIS Gestion-d-Agendas-Partages - DeclarantRDVGAP"
* status = #active
* experimental = false
* description = "Un déclarant de rendez-vous fait une demande auprès d’un gestionnaire d’agenda pour créer (demande d'un nouveau rendez-vous ou déclaration d'un rendez-vous pris) ou mettre à jour un rendez-vous"
* fhirVersion = #4.0.1
* kind = #requirements
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* implementationGuide = "http://esante.gouv.fr/ci-sis/fhir/ImplementationGuides/CI-SIS.GestionDAgendasPartages"
* rest.mode = #client
* rest.documentation = "Création mise à jour de RDV"
* rest.security.cors = false
* rest.security.description = "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S\n) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\nd’information de santé (CI-SIS)"
* rest.resource.type = #Appointment
* rest.resource.profile = "http://interopsante.org/fhir/StructureDefinition/FrAppointment"
* rest.resource.interaction[0].code = #read
* rest.resource.interaction[+].code = #create
* rest.resource.interaction[+].code = #update
* rest.resource.conditionalUpdate = true