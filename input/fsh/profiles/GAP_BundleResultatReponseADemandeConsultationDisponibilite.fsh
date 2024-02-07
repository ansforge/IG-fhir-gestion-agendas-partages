Profile: GAP_BundleResultatReponseADemandeConsultationDisponibilite
Parent: Bundle
Id: gap-bundle-reponse-demande-consult-dispo
Title: "GAP-BundleResultatReponseADemandeConsultationDisponibilites"
Description: "Profil du bundle de réponse à la demande de consultation des disponibilités d’une ou de plusieurs ressources. Sur la durée demandée, elle devra contenir les informations sur le temps libre ou occupé de chacune des ressources. La réponse contient donc les disponibilités (Slot) des ressources répondant aux critères de recherche de la demande. Les Slot portant le statut free représentent les disponibilités (status=free). Status=busy pour les indisponibilités correspondant à des rendez-vous pris"
* type = #searchset

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry contains
    Slot 0..* and
    Schedule 0..* and
    Patient 0..* and
    Practitioner 0..* and
    PractitionerRole 0..* and
    Device 0..* and
    Location 0..* and
    HealthcareService 0..* and
    Organization 0..* and
    RelatedPerson 0..*

* entry[Slot].resource 1..
* entry[Slot].resource only $FrSlot
* entry[Slot].search.mode = #match
* entry[Slot].request ..0
* entry[Slot].response ..0

* entry[Schedule].resource 1..
* entry[Schedule].resource only $FrSchedule
* entry[Schedule].search.mode = #include
* entry[Schedule].request ..0
* entry[Schedule].response ..0

* entry[Patient].resource 1..
* entry[Patient].resource only $FrPatient
* entry[Patient].search.mode = #include
* entry[Patient].request ..0
* entry[Patient].response ..0

* entry[Practitioner].resource 1..
* entry[Practitioner].resource only as-practitioner
* entry[Practitioner].search.mode = #include
* entry[Practitioner].request ..0
* entry[Practitioner].response ..0

* entry[PractitionerRole].resource 1..
* entry[PractitionerRole].resource only as-practitionerrole
* entry[PractitionerRole].search.mode = #include
* entry[PractitionerRole].request ..0
* entry[PractitionerRole].response ..0

* entry[Device].resource 1..
* entry[Device].resource only Device
* entry[Device].search.mode = #include
* entry[Device].request ..0
* entry[Device].response ..0

* entry[Location].resource 1..
* entry[Location].resource only $FrLocation
* entry[Location].search.mode = #include
* entry[Location].request ..0
* entry[Location].response ..0

* entry[HealthcareService].resource 1..
* entry[HealthcareService].resource only $FrHealthcareService
* entry[HealthcareService].search.mode = #include
* entry[HealthcareService].request ..0
* entry[HealthcareService].response ..0

* entry[Organization].resource 1..
* entry[Organization].resource only $FrOrganization
* entry[Organization].search.mode = #include
* entry[Organization].request ..0
* entry[Organization].response ..0

* entry[RelatedPerson].resource 1..
* entry[RelatedPerson].resource only $FrRelatedPerson
* entry[RelatedPerson].search.mode = #include
* entry[RelatedPerson].request ..0
* entry[RelatedPerson].response ..0