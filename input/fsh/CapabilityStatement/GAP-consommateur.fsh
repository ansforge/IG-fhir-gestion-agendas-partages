Instance: GAP-Consommateur
InstanceOf: CapabilityStatement
Usage: #definition
* name = "GAP-consommateur"
* title = "CI-SIS Gestion-d-Agendas-Partages - ConsommateurGAP"
* status = #active
* experimental = false
* description = "Un consommateur consulte l’agenda d’une ressource gérée par un gestionnaire d’agenda. La consultation de l’agenda indique les éventuelles plages de disponibilité déclarées pour la  \nressource ainsi que ses indisponibilités et les détails des rendez-vous existants (types, durées, etc., cf. section 2.3.3). Le consommateur peut être la personne prise en charge, un  \nprofessionnel intervenant dans la prise en charge d’une personne ou tout autre tiers autorisé à consulter l’agenda de la ressource concernée. "
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* implementationGuide = "http://esante.gouv.fr/ci-sis/fhir/ImplementationGuides/CI-SIS.GestionDAgendasPartages"
* rest.mode = #client
* rest.documentation = "consultation de disponibilités"
* rest.security.cors = false
* rest.security.description = "L’ANS propose des référentiels dédiés à la politique de sécurité (la PGSSI-S\n) et des mécanismes de sécurisation sont définis dans les volets de la couche Transport du Cadre d’Interopérabilité des systèmes\nd’information de santé (CI-SIS)"

* rest.resource[0].type = #Slot
* rest.resource[=].profile = "http://interopsante.org/fhir/StructureDefinition/FrSlot"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].searchParam[0].name = "GAP_Slot_earliestStart"
* rest.resource[=].searchParam[=].definition = "http://esante.gouv.fr/ci-sis/fhir/SearchParameter/GAP_Slot_earliestStart"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Recherche d'une disponibilité sur la date et l'heure de début de disponibilité souhaité"
* rest.resource[=].searchParam[+].name = "GAP_Slot_latestStart"
* rest.resource[=].searchParam[=].definition = "http://esante.gouv.fr/ci-sis/fhir/SearchParameter/GAP_Slot_latestStart"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Recherche d'une disponibilité sur la date et l'heure de fin de disponibilité souhaité"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Slot-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifiant du slot"
* rest.resource[=].searchParam[+].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Slot-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Statut (occupé/libre) d'un slot"
* rest.resource[=].searchParam[+].name = "schedule"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Slot-schedule"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Reference vers la ressource schedule correspondant à notre disponibilité"

* rest.resource[+].type = #Appointment
* rest.resource[=].profile = "http://interopsante.org/fhir/StructureDefinition/FrAppointment"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].searchParam[0].name = "GAP_Appointment_priority"
* rest.resource[=].searchParam[=].definition = "http://esante.gouv.fr/ci-sis/fhir/SearchParameter/GAP_Appointment_priority"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Priorité du rendez vous"
* rest.resource[=].searchParam[+].name = "GAP_Appointment_description"
* rest.resource[=].searchParam[=].definition = "http://esante.gouv.fr/ci-sis/fhir/SearchParameter/GAP_Appointment_description"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Description du rendez vous (titre ou commentaire)"
* rest.resource[=].searchParam[+].name = "GAP_Appointment_created"
* rest.resource[=].searchParam[=].definition = "http://esante.gouv.fr/ci-sis/fhir/SearchParameter/GAP_Appointment_created"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Date de création du rendez vous"
* rest.resource[=].searchParam[+].name = "actor"
* rest.resource[=].searchParam[=].definition = "http://esante.gouv.fr/ci-sis/fhir/SearchParameter/Appointment-actor"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Recherche d'un rendez-vous sur l'identifiant de l'acteur"
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
* rest.resource[=].searchParam[=].documentation = "status générale du rendez vous"
* rest.resource[=].searchParam[+].name = "supporting-info"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Appointment-supporting-info"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "information supplémentaire sur le rendez vous"

* rest.resource[+].type = #Schedule
* rest.resource[=].profile = "http://interopsante.org/fhir/StructureDefinition/FrSchedule"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].searchParam.name = "actor"
* rest.resource[=].searchParam.definition = "http://hl7.org/fhir/SearchParameter/Schedule-actor"
* rest.resource[=].searchParam.type = #reference
* rest.resource[=].searchParam.documentation = "Reference vers la ressource participant au creneau"

* rest.resource[+].type = #Patient
* rest.resource[=].profile = "http://interopsante.org/fhir/StructureDefinition/FrPatient"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Patient-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifiant du patient (matricule INS ou autre identifiant)"
* rest.resource[=].searchParam[+].name = "family"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-family"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Nom du patient"
* rest.resource[=].searchParam[+].name = "given"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-given"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Prenom du patient"

* rest.resource[+].type = #Practitioner
* rest.resource[=].profile = "http://interopsante.org/fhir/StructureDefinition/FrPractitioner"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Practitioner-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifiant du professionnel"
* rest.resource[=].searchParam[+].name = "family"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-family"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Nom du patient"
* rest.resource[=].searchParam[+].name = "given"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-given"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Prenom du patient"

* rest.resource[+].type = #PractitionerRole
* rest.resource[=].profile = "https://interop.esante.gouv.fr/ig/fhir/annuaire/StructureDefinition/as-dp-practitionerrole"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].searchParam[0].name = "role"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-role"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Profession du professionnel"
* rest.resource[=].searchParam[+].name = "speciality"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-speciality"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Spécialité du professionnel"
* rest.resource[=].searchParam[+].name = "location"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/PractitionerRole-location"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Adresse situation exercice"
* rest.resource[=].searchParam[+].name = "telecom"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-telecom"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Telecommunication de la situation d'exercice"

* rest.resource[+].type = #RelatedPerson
* rest.resource[=].profile = "http://interopsante.org/fhir/StructureDefinition/FrRelatedPerson"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/RelatedPerson-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifiant de la personne de contact"
* rest.resource[=].searchParam[+].name = "address"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-address"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Adresse de la personne de contact"
* rest.resource[=].searchParam[+].name = "telecom"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/individual-telecom"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Telecom de la personne de contact"
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/RelatedPerson-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Nom de la personne de contact"

* rest.resource[+].type = #Location
* rest.resource[=].profile = "http://interopsante.org/fhir/StructureDefinition/FrLocation"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].searchParam[0].name = "address"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-address"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Adresse situation exercice"
* rest.resource[=].searchParam[+].name = "near"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-near"
* rest.resource[=].searchParam[=].type = #special
* rest.resource[=].searchParam[=].documentation = "Adresse situation exercice via les coordonnées géographiques"
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Nom du lieu"
* rest.resource[=].searchParam[+].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Location-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifiant du lieu"

* rest.resource[+].type = #Device
* rest.resource[=].profile = "http://hl7.org/fhir/StructureDefinition/Device"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Device-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifiant de l'équipement opérationnel'"
* rest.resource[=].searchParam[+].name = "type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Device-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Type de l'équipement opérationnel'"
* rest.resource[=].searchParam[+].name = "device-name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Device-device-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Libelle de l'équipement opérationnel'"
* rest.resource[=].searchParam[+].name = "model"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Device-model"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Modele de l'équipement opérationnel'"

* rest.resource[+].type = #HealthcareService
* rest.resource[=].profile = "http://interopsante.org/fhir/StructureDefinition/FrHealthcareService"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifiant de l'organisation interne"
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Nom de l'organisation interne"
* rest.resource[=].searchParam[+].name = "service-type"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-service-type"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Champ d'activite de l'organisation interne"
* rest.resource[=].searchParam[+].name = "organization"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/HealthcareService-organization"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Référence vers l'entite géographique de l'organisation interne"

* rest.resource[+].type = #Organization
* rest.resource[=].profile = "http://interopsante.org/fhir/StructureDefinition/FrOrganization"
* rest.resource[=].interaction[0].code = #read
* rest.resource[=].interaction[+].code = #search-type
* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-identifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Identifiant de l'entite geographique (idNatStruct)"
* rest.resource[=].searchParam[+].name = "name"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-name"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Nom de l'entite geographique"
* rest.resource[=].searchParam[+].name = "address"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Organization-address"
* rest.resource[=].searchParam[=].type = #string
* rest.resource[=].searchParam[=].documentation = "Adresse de l'entite geographique"