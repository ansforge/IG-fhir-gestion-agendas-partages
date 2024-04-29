Instance: GAP-GestionnaireAgenda
InstanceOf: CapabilityStatement
Usage: #definition
* name = "GAP_GestionnaireAgenda"
* title = "CI-SIS Gestion-d-Agendas-Partages - GestionnaireAgendaGAP"
* status = #active
* experimental = false
* description = "Le gestionnaire d’agenda gère les demandes de déclaration, de modification ou de   suppression de rendez-vous."
* date = "2023-08-02"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* implementationGuide = "https://interop.esante.gouv.fr/ig/fhir/gap"
* rest.mode = #server
* rest.documentation = "Déclaration, modification et suppression des disponibilités d'une ressource"
* rest.security.cors = false
* rest.security.description = "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S ) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS)"

* rest.resource[0].type = #Schedule
* rest.resource[=].profile = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-schedule"
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #delete
* rest.resource[=].interaction[+].code = #patch

* rest.resource[+].type = #Slot
* rest.resource[=].profile = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-slot"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type

* rest.resource[=].searchParam[0].name = "GAP_Slot_earliestStart"
* rest.resource[=].searchParam[=].definition = "https://interop.esante.gouv.fr/ig/fhir/gap/SearchParameter/GAP-Slot-earliestStart"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Recherche d'une disponibilité sur la date et l'heure de la disponibilité souhaité, date au plus tôt"

* rest.resource[=].searchParam[+].name = "GAP_Slot_latestStart"
* rest.resource[=].searchParam[=].definition = "https://interop.esante.gouv.fr/ig/fhir/gap/SearchParameter/GAP-Slot-latestStart"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Recherche d'une disponibilité sur la date et l'heure de disponibilité souhaité, date au plus tard"

* rest.resource[=].searchParam[+].name = "GAP_Schedule_Actor"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Schedule-actor"
>>>>>>> Stashed changes
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Recherche d'une disponibilité sur les caractéristiques de la ressource Device qui est l'acteur d'agenda (identifiant, nom, modèle, type)"

* rest.resource[=].searchParam[+].name = "Schedule-actor"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Schedule-actor"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Recherche d'un acteur de l'agenda"


* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Slot-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "A Slot Identifier"
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Slot-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The free/busy status of the appointment"

* rest.resource[+].type = #Appointment
* rest.resource[=].profile = "https://hl7.fr/ig/fhir/core/StructureDefinition/fr-core-appointment"
* rest.resource[=].interaction[0].code = #create
* rest.resource[=].interaction[+].code = #update
* rest.resource[=].interaction[+].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].conditionalUpdate = true

* rest.resource[=].searchParam[0].name = "GAP_Appointment_priority"
* rest.resource[=].searchParam[=].definition = "https://interop.esante.gouv.fr/ig/fhir/gap/SearchParameter/GAP-Appointment-priority"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Priority of the appointment"

* rest.resource[=].searchParam[+].name = "GAP_Appointment_description"
* rest.resource[=].searchParam[=].definition = "https://interop.esante.gouv.fr/ig/fhir/gap/SearchParameter/GAP-Appointment-description"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Comment or title of the appointment"

* rest.resource[=].searchParam[+].name = "GAP_Appointment_created"
* rest.resource[=].searchParam[=].definition = "https://interop.esante.gouv.fr/ig/fhir/gap/SearchParameter/GAP-Appointment-created"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Date that this appointment was initially created"

* rest.resource[=].searchParam[+].name = "GAP_Appointment_Actor"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Appointment-actor"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Recherche d'un rendez-vous sur l'identifiant de l'acteur, la ressource pouvant être Patient, Practitioner, PractitionerRole, RelatedPerson, Location, Device ou HealthcareService"
* rest.resource[=].searchParam[+].name = "GAP_Appointment_earliestStart"

* rest.resource[=].searchParam[=].definition = "https://interop.esante.gouv.fr/ig/fhir/gap/SearchParameter/GAP-Appointment-earliestStart"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Recherche d'un rendez-vous sur la date et heure de rendez-vous, date au plus tôt"

* rest.resource[=].searchParam[+].name = "GAP_Appointment_latestStart"
* rest.resource[=].searchParam[=].definition = "https://interop.esante.gouv.fr/ig/fhir/gap/SearchParameter/GAP-Appointment-latestStart"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Recherche d'un rendez-vous sur la date et heure de rendez-vous, date au plus tard"

* rest.resource[=].searchParam[+].name = "date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Appointment-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "date et heure du rendez-vous"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Appointment-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "identifiant du rendez-vous"
* rest.resource[=].searchParam[+].name = "service-type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Appointment-service-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "serivce spécifique qui doit être réslisé pandant le rendez-vous"
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Appointment-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "The overall status of the appointment"
* rest.resource[=].searchParam[+].name = "supporting-info"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Appointment-supporting-info"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Additional information to support the appointment"