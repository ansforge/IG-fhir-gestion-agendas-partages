Profile: GAP_BundleResultatReponseADemandeConsultationDisponibilite
Parent: Bundle
Id: GAP_BundleResultatReponseADemandeConsultationDisponibilite
Title: "GAP_BundleResultatReponseADemandeConsultationDisponibilites"
Description: "Il s’agit de la réponse à la demande de consultation des disponibilités d’une ou de plusieurs ressources. Sur la durée demandée, elle devra contenir les informations sur le temps libre ou occupé de chacune des ressources. La réponse contient donc les disponibilités (Slot) des ressources répondant aux critères de recherche de la demande. Les Slot portant le statut free représentent les disponibilités (status=free). Status=busy pour les indisponibilités correspondant à des rendez-vous pris"
* ^url = "http://esante.gouv.fr/ci-sis/fhir/StructureDefinition/GAP_BundleResultatReponseADemandeConsultationDisponibilite"
* ^version = "2.0"
* ^status = #draft
* ^date = "2021-12-01"
* ^publisher = "ANS"
* type = #searchset (exactly)
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    Slot 0..* and
    Schedule 0..* and
    Patient 0..* and
    Practitioner 0..* and
    PractitionerRoleEx 0..* and
    PractitionerRolePro 0..* and
    Device 0..* and
    Location 0..* and
    HealthcareService 0..* and
    Organization 0..* and
    RelatedPerson 0..*
* entry[Slot].resource 1..
* entry[Slot].resource only $FrSlot
* entry[Slot].search.mode = #match (exactly)
* entry[Slot].request ..0
* entry[Slot].response ..0
* entry[Schedule].resource 1..
* entry[Schedule].resource only $FrSchedule
* entry[Schedule].search.mode = #include (exactly)
* entry[Schedule].request ..0
* entry[Schedule].response ..0
* entry[Patient].resource 1..
* entry[Patient].resource only $FrPatient
* entry[Patient].search.mode = #include (exactly)
* entry[Patient].request ..0
* entry[Patient].response ..0
* entry[Practitioner].resource 1..
* entry[Practitioner].resource only $FrPractitioner
* entry[Practitioner].search.mode = #include (exactly)
* entry[Practitioner].request ..0
* entry[Practitioner].response ..0
* entry[PractitionerRoleEx].resource 1..
* entry[PractitionerRoleEx].resource only $practitionerRole-organizationalRole-rass
* entry[PractitionerRoleEx].search.mode = #include (exactly)
* entry[PractitionerRoleEx].request ..0
* entry[PractitionerRoleEx].response ..0
* entry[PractitionerRolePro].resource 1..
* entry[PractitionerRolePro].resource only $practitionerRole-professionalRole-rass
* entry[PractitionerRolePro].search.mode = #include (exactly)
* entry[PractitionerRolePro].request ..0
* entry[PractitionerRolePro].response ..0
* entry[Device].resource 1..
* entry[Device].resource only Device
* entry[Device].search.mode = #include (exactly)
* entry[Device].request ..0
* entry[Device].response ..0
* entry[Location].resource 1..
* entry[Location].resource only $FrLocation
* entry[Location].search.mode = #include (exactly)
* entry[Location].request ..0
* entry[Location].response ..0
* entry[HealthcareService].resource 1..
* entry[HealthcareService].resource only $FrHealthcareService
* entry[HealthcareService].search.mode = #include (exactly)
* entry[HealthcareService].request ..0
* entry[HealthcareService].response ..0
* entry[Organization].resource 1..
* entry[Organization].resource only $FrOrganization
* entry[Organization].search.mode = #include (exactly)
* entry[Organization].request ..0
* entry[Organization].response ..0
* entry[RelatedPerson].resource 1..
* entry[RelatedPerson].resource only $FrRelatedPerson
* entry[RelatedPerson].search.mode = #include (exactly)
* entry[RelatedPerson].request ..0
* entry[RelatedPerson].response ..0