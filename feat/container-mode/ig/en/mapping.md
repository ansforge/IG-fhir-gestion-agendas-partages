# Mappings - Gestion d'Agendas Partagés (GAP) v3.0.0

## Mappings

Cette page a pour objectif de mettre en correspondance les ressources FHIR avec les objets métiers du MOS et avec iCalendar.

### Mise en correspondance entre objets métiers et ressources FHIR

* ***Classe***: PersonnePriseCharge
  * ***Attribut***: L’objet métier INS de type INS regroupe les attributs détaillés ci-dessous.INS : [0..1] INS[^1]- matriculeINS : [1..1] Identifiant- nomFamille : [1..1] Texte- prenomActeNaissance : [1..1] Texte- premierPrenomActeNaissance : [1..1] Texte- nomUtilise : [1..1] Texte- prenomUtilise : [1..1] Texte- sexe : [1..1] Code- dateNaissance : [1..1] DateHeure- lieuNaissance : [1..1] Texte
  * ***Ressource***: PatientFrPatient
  * ***Elément***: - Identifier : Identifier [0..*] - Slice « INS-NIR » - Slice « INS-NIA »  - Slice « INS-C »- name[1..*].family : string [1..1] (FrHumanName)- name[1..*].text : string [0..1] (FrHumanName)- name[1..*].given : string [1..1] (FrHumanName)Slice officialName, Patient.name.use prenant la valeur « official »)- name[1..*].family : string [0..1] (FrHumanName)- name[1..*].given : string [0..*] (FrHumanName)Slice usualName, Patient.name.use prenant la valeur « usual »- gender : code [1..1]- birthDate : date [1..1]- birthPlace : Extension(Address) [0..1]Extension (BirthPlace)
* ***Classe***: idPersonnePriseCharge : [0..*] Identifiant
  * ***Attribut***: PatientFrPatient
  * ***Ressource***: identifier : Identifier [0..*]
* ***Classe***: adresseCorrespondance : [0..*] Adresse
  * ***Attribut***: PatientFrPatient
  * ***Ressource***: address : FrAddress [0..*]
* ***Classe***: telecommunication : [0..*] Telecommunication
  * ***Attribut***: PatientFrPatient
  * ***Ressource***: telecom : FrContactPoint [0..*]
* ***Classe***: PersonnePhysique
  * ***Attribut***: nomFamille : [0..1] Texte
  * ***Ressource***: PatientFrPatient
  * ***Elément***: name[1..*].family : string [0..1](FrHumanName)Slice « usualName », Patient.name.use prenant la valeur « usual »
* ***Classe***: prenomUsuel : [0..1] Texte
  * ***Attribut***: PatientFrPatient
  * ***Ressource***: name[1..*].given : string [0..*](FrHumanName)Slice « usualName », Patient.name.use prenant la valeur « usual »
* ***Classe***: Professionnel
  * ***Attribut***: idPP : [1..1] Identifiant
  * ***Ressource***: PractitionerFrPractitioner
  * ***Elément***: identifier : Identifier [0..*]
* ***Classe***: ExerciceProfessionnel
  * ***Attribut***: nomExercice : [0..1] Texte
  * ***Ressource***: PractitionerRoleAsPractitionerRolePRofile
  * ***Elément***: name[0..*].family : string [0..1](FrHumanName)Extension française (PractitionerRoleName)
* ***Classe***: prenomExercice : [0..1] Texte
  * ***Attribut***: PractitionerRoleAsPractitionerRolePRofile
  * ***Ressource***: name[0..*].given : string [0..*](FrHumanName)Extension française (PractitionerRoleName)
* ***Classe***: profession : [0..1] Code
  * ***Attribut***: PractitionerRoleAsPractitionerRoleProfile
  * ***Ressource***: code : CodeableConcept [0..*]- Slice « professionG15 »- Slice «  professionR94 »- Slice «  professionR95 »- Slice «  professionR291 »
* ***Classe***: SituationExercice
  * ***Attribut***: adresseSE : [1..*] Adresse
  * ***Ressource***: PractitionerRoleAsPractitionerRoleProfile
  * ***Elément***: location[0..*].address : FrAddressExtended [0..1](AsLocationProfile)
* ***Classe***: telecommunication : [0..*] Telecommunication
  * ***Attribut***: PractitionerRoleAsPractitionerRoleProfile
  * ***Ressource***: telecom : FrContactPoint [0..*]
* ***Classe***: SavoirFaire
  * ***Attribut***: specialite : [0..1] Code
  * ***Ressource***: PractitionerRoleAsPractitionerRoleProfile
  * ***Elément***: specialty : CodeableConceptTimed [0..*]Slice « savoirFaireR38 »
* ***Classe***: competence : [0..1] Code
  * ***Attribut***: PractitionerRoleAsPractitionerRoleProfile
  * ***Ressource***: specialty : CodeableConceptTimed [0..*]Slice « savoirFaireR39 »
* ***Classe***: competenceExclusive : [0..1] Code
  * ***Attribut***: PractitionerRoleAsPractitionerRoleProfile
  * ***Ressource***: specialty : CodeableConceptTimed [0..*]Slice « savoirFaireR40 »
* ***Classe***: orientationParticuliere : [0..1] Code
  * ***Attribut***: PractitionerRole AsPractitionerRoleProfile
  * ***Ressource***: specialty : CodeableConceptTimed [0..*]Slice « savoirFaireG13 »
* ***Classe***: capaciteSavoirfaire : [0..1] Code
  * ***Attribut***: PractitionerRoleAsPractitionerRoleProfile
  * ***Ressource***: specialty : CodeableConceptTimed [0..*]Slice « savoirFaireR43 »
* ***Classe***: qualificationPAC : [0..1] Code
  * ***Attribut***: PractitionerRoleAsPractitionerRoleProfile
  * ***Ressource***: specialty : CodeableConceptTimed [0..*]Slice « savoirFaireR44 »
* ***Classe***: fonctionQualifiee: [0..1] Code
  * ***Attribut***: PractitionerRoleAsPractitionerRoleProfile
  * ***Ressource***: specialty : CodeableConceptTimed [0..*]Slice « savoirFaireR45 »
* ***Classe***: descNonQualifiant : [0..1] Code
  * ***Attribut***: PractitionerRoleAsPractitionerRoleProfile
  * ***Ressource***: specialty : CodeableConceptTimed [0..*]Slice « savoirFaireR42 »
* ***Classe***: droitExerciceComplementaire: [0..1] Code
  * ***Attribut***: PractitionerRoleAsPractitionerRoleProfile
  * ***Ressource***: specialty : CodeableConceptTimed [0..*]Slice « savoirFaireR97 »
* ***Classe***: EntiteGeographique
  * ***Attribut***: idNat_Struct : [1..1] Identifiant
  * ***Ressource***: OrganizationFrOrganization
  * ***Elément***: identifier : Identifier [0..*]
* ***Classe***: denominationEG : [0..1] Texte
  * ***Attribut***: OrganizationFrOrganization
  * ***Ressource***: name : string [0..1]
* ***Classe***: adresseEG : [0..*] Adresse
  * ***Attribut***: OrganizationFrOrganization
  * ***Ressource***: address : FrAddress [0..*]
* ***Classe***: Lieu
  * ***Attribut***: nom : [0..1] Texte
  * ***Ressource***: LocationFrLocation
  * ***Elément***: name : string [0..1]
* ***Classe***: description : [0..1] Texte
  * ***Attribut***: LocationFrLocation
  * ***Ressource***: description : string [0..1]
* ***Classe***: identifiant : [1..1] Identifiant
  * ***Attribut***: LocationFrLocation
  * ***Ressource***: identifier : Identifier [1..*]
* ***Classe***: adresse : [0..1] Adresse
  * ***Attribut***: LocationFrLocation
  * ***Ressource***: address : Address [0..1]
* ***Classe***: EquipementOperationnel
  * ***Attribut***: idRessourseMaterielle : [1..1] Identifiant
  * ***Ressource***: Device
  * ***Elément***: identifier : Identifier [0..*]
* ***Classe***: typeEquipement : [0..1] Code
  * ***Attribut***: Device
  * ***Ressource***: Nomenclature à définir par le fournisseur de services en charge des équipements. Elle peut être issue de la TRE_R212-Equipement. type : CodeableConcept[^2] [0..1]
* ***Classe***: libelle : [0..1] Texte
  * ***Attribut***: Device
  * ***Ressource***: deviceName[0..*].name : string [1..1]
* ***Classe***: reference : [0..1] Code
  * ***Attribut***: Device
  * ***Ressource***: modelNumber : string [0..1]
* ***Classe***: Contact
  * ***Attribut***: idContact : [1..1] Identifiant
  * ***Ressource***: RelatedPerson FrRelatedPerson
  * ***Elément***: identifier : Identifier [1..1]
* ***Classe***: adresse : [0..1] Adresse
  * ***Attribut***: RelatedPersonFrRelatedPerson
  * ***Ressource***: address : FrAddress [0..*]
* ***Classe***: telecommunication : [0..*] Telecommunication
  * ***Attribut***: RelatedPersonFrRelatedPerson
  * ***Ressource***: telecom : FrContactPoint [0..*]
* ***Classe***: PersonnePhysique
  * ***Attribut***: nomFamille : [0..*] Texte
  * ***Ressource***: RelatedPersonFrRelatedPerson
  * ***Elément***: name[0..*].family : string [0..1](FrHumanName)
* ***Classe***: prenomUsuel : [0..*] Texte
  * ***Attribut***: RelatedPersonFrRelatedPerson
  * ***Ressource***: name[0..*].given : string [0..*](FrHumanName)
* ***Classe***: OrganisationInterne
  * ***Attribut***: identifiantOI : [1..1] Identifiant
  * ***Ressource***: HealthcareServiceFrHealthcareService
  * ***Elément***: identifier : Identifier [0..*]
* ***Classe***: nom : [0..1] Texte
  * ***Attribut***: HealthcareServiceFrHealthcareService
  * ***Ressource***: name : string [0..1]
* ***Classe***: telecommunication : [0..*] Telecommunication
  * ***Attribut***: HealthcareServiceFrHealthcareService
  * ***Ressource***: telecom : FrContactPoint [0..*]

#### Flux 1c – Suppression d’une ressource

* ***Classe***: PersonnePriseCharge
  * ***Attribut***: idPersonnePriseCharge : [0..*] Identifiant
  * ***Ressource***: Patient
  * ***Paramètre de recherche***: id : token
* ***Classe***: INS : INS [0..1]
  * ***Attribut***: Patient
  * ***Ressource***: id : token
* ***Classe***: Contact
  * ***Attribut***: idContact : [1..1] Identifiant
  * ***Ressource***: RelatedPerson
  * ***Paramètre de recherche***: id : token
* ***Classe***: Professionnel
  * ***Attribut***: idPP : [1..1] Identifiant
  * ***Ressource***: Practitioner
  * ***Paramètre de recherche***: id : token
* ***Classe***: OrganisationInterne
  * ***Attribut***: IdentifiantOI : [1..1] Identifiant
  * ***Ressource***: HealthcareService
  * ***Paramètre de recherche***: id : token
* ***Classe***: Lieu
  * ***Attribut***: Identifiant : [1..1] Identifiant
  * ***Ressource***: Location
  * ***Paramètre de recherche***: id : token
* ***Classe***: EquipementOperationnel
  * ***Attribut***: idRessourceMaterielle :[1..1] Identifiant
  * ***Ressource***: Device
  * ***Paramètre de recherche***: id : token

#### Flux 2a – Création d’un agenda

* ***Classe***: Agenda
  * ***Attribut***: idAgenda : [1..1] Identifiant
  * ***Ressource***: ScheduleFrSchedule
  * ***Element***: identifier : Identifier [0..*]
* ***Classe***: nom : [0..1] Texte
  * ***Attribut***: ScheduleFrSchedule
  * ***Ressource***: comment : [0 ..1] string
* ***Classe***: dateCreation : [0..1] Date
  * ***Attribut***: ScheduleFrSchedule
  * ***Ressource***: Meta[0..1].lastUpdated : instant [0..1]
* ***Classe***: dateDebutValidite : [0..1] DateHeure
  * ***Attribut***: ScheduleFrSchedule
  * ***Ressource***: planningHorizon[0..1].start : [0..1] dateTime
* ***Classe***: dateFinValidite : [0..1] DateHeure
  * ***Attribut***: ScheduleFrSchedule
  * ***Ressource***: planningHorizon[0..1].end : [0..1] dateTime
* ***Classe***: Les acteurs de l’agenda sont décrits dans une partie spécifiquePersonnePriseCharge [0..*]
  * ***Attribut***: ScheduleFrSchedule
  * ***Ressource***: Cette référence peut être multiple lorsqu’un agenda concerne un ensemble d’acteurs. En établissement par exemple, un spécialiste, une infirmière et un équipement peuvent disposer d’un même agenda. La prise de rendez-vous sur cet agenda concerne des services de soins spécifiques nécessitant la disponibilité de ces trois acteurs.actor : Reference [1..*][^4] Il est préconisé de s’appuyer sur les profils AsPractitionerRoleProfile de l’annuaire santé.(Fr[RelatedPerson] | [Device] | [FrHealthcareService] | [FrLocation] | [FrPatient] | [FrPractitioner] | PractitionerRole[^5])
* ***Classe***: Contact [0..*]
* ***Classe***: Professionnel [0..*]
* ***Classe***: OrganisationInterne [0..*]
* ***Classe***: Lieu [0..*]
* ***Classe***: EquipementOperationnel [0..*]
* ***Classe***: PersonnePriseCharge
  * ***Attribut***: L’objet métier INS de type INS regroupe les attributs détaillés ci-dessous.INS : [0..1] INS[^6]- matriculeINS : [1..1] Identifiant- nomFamille : [1..1] Texte- prenomActeNaissance : [1..1] Texte- premierPrenomActeNaissance : [1..1] Texte- nomUtilise : [1..1] Texte- prenomUtilise : [1..1] Texte- sexe : [1..1] Code- dateNaissance : [1..1] DateHeure- lieuNaissance : [1..1] Texte
  * ***Ressource***: PatientFrPatient
  * ***Element***: - Identifier : Identifier [0..*] - Slice « INS-NIR » - Slice « INS-NIA »  - Slice « INS-C »- name[1..*].family : string [1..1] (FrHumanName)- name[1..*].text : string [0..1] (FrHumanName)- name[1..*].given : string [1..1] (FrHumanName)Slice officialName, Patient.name.use prenant la valeur « official »)- name[1..*].family : string [0..1] (FrHumanName)- name[1..*].given : string [0..*] (FrHumanName)Slice usualName, Patient.name.use prenant la valeur « usual »- gender : code [1..1]- birthDate : date [1..1]- birthPlace : Extension(Address) [0..1]Extension (BirthPlace)
* ***Classe***: idPersonnePriseCharge : [0..*] Identifiant
  * ***Attribut***: PatientFrPatient
  * ***Ressource***: identifier : Identifier [0..*]
* ***Classe***: Contact
  * ***Attribut***: idContact : [1..1] Identifiant
  * ***Ressource***: RelatedPersonFrRelatedPerson
  * ***Element***: identifier : Identifier [1..1]
* ***Classe***: Professionnel
  * ***Attribut***: idPP : [1..1] Identifiant
  * ***Ressource***: PractitionerFrPractitioner
  * ***Element***: identifier : Identifier [0..*]
* ***Classe***: OganisationInterne
  * ***Attribut***: identifiantOI : [1..1] Identifiant
  * ***Ressource***: HealthcareServiceFrHealthcareService
  * ***Element***: identifier : Identifier [0..*]
* ***Classe***: Lieu
  * ***Attribut***: Identifiant : [1..1] Identifiant
  * ***Ressource***: LocationFrLocation
  * ***Element***: identifier : Identifier [1..*]
* ***Classe***: EquipementOperationnel
  * ***Attribut***: idRessourceMaterielle : [1..1] Identifiant
  * ***Ressource***: Device
  * ***Element***: identifier : Identifier [0..*]

#### Flux 2c – Suppression d’un agenda

| | | | |
| :--- | :--- | :--- | :--- |
| ****Classe**** | ****Attribut**** | ****Ressource**** | ****Paramètre de recherche**** |
| Agenda | idAgenda : [1..1] Identifiant | ScheduleFrSchedule | id : token |

#### Flux 3a – Création de disponibilités

* ***Classe***: PlageDisponibilite
  * ***Attribut***: idDisponibilite : [1..1] Identifiant
  * ***Ressource***: ScheduleFrSchedule
  * ***Elément***: Plusieurs disponibilités peuvent être décrites dans un même agenda. Des indisponibilités exceptionnelles, ne représentant pas les rendez-vous pris, peuvent aussi être décrites par cette extension (availabilityTime.type=busy-unavailable).availabilityTime[0..*].identifier : Identifier [1..*][^7]extension française(FrScheduleAvailabiltyTime)
* ***Classe***: debutDisponibilite : [1..1] DateHeure
  * ***Attribut***: ScheduleFrSchedule
  * ***Ressource***: availabilityTime[0..*].start : dateTime [1..1]extension française(FrScheduleAvailabiltyTime)
* ***Classe***: finDisponibilite : [0..1] DateHeure
  * ***Attribut***: ScheduleFrSchedule
  * ***Ressource***: availabilityTime[0..*].end : dateTime [1..1]extension française(FrScheduleAvailabiltyTime)
* ***Classe***: dateDeclarationPlageDisponibilite : [0..1] DateHeure
  * ***Attribut***: ScheduleFrSchedule
  * ***Ressource***: availabilityTime[0..*].created : dateTime [0..1]extension française(FrScheduleAvailabiltyTime)
* ***Classe***: frequencePlageDisponibilite : [0..1] Code
  * ***Attribut***: ScheduleFrSchedule
  * ***Ressource***: availabilityTime[0..*].rrule[0..1].freq : coding [1..1]extension française(FrScheduleAvailabiltyTime)
* ***Classe***: jourSemaine : [0..*] Numerique
  * ***Attribut***: ScheduleFrSchedule
  * ***Ressource***: availabilityTime[0..*].rrule[0..1].byDay : string [0..*]extension française(FrScheduleAvailabiltyTime)
* ***Classe***: heureDebut : [0..1] Heure
  * ***Attribut***: ScheduleFrSchedule
  * ***Ressource***: availabilityTime[0..*].rrule[0..1].byHour : positiveInt [0..*]extension française(FrScheduleAvailabiltyTime)
* ***Classe***: heureFin :[0..1] Heure
  * ***Attribut***: ScheduleFrSchedule
  * ***Ressource***: availabilityTime[0..*].rrule[0..1].byHour : positiveInt [0..*]extension française(FrScheduleAvailabiltyTime)
* ***Classe***: statut : [1..1] Code
  * ***Attribut***: ScheduleFrSchedule
  * ***Ressource***: availabilityTime[0..*].type: coding [1..1]avec valeur fixée à « free »extension française(FrScheduleAvailabiltyTime)
* ***Classe***: Agenda
  * ***Attribut***: idAgenda : [1..1] Identifiant
  * ***Ressource***: ScheduleFrSchedule
  * ***Elément***: Identifier : [0..*] Identifier

#### Flux 3c – Suppression de disponibilités**

| | | | |
| :--- | :--- | :--- | :--- |
| ****Classe**** | ****Attribut**** | ****Ressource**** | ****Paramètre de recherche**** |
| PlageDisponibilite | idDisponibilite : [1..1] Identifiant | Schedule | availabilityTime.identifier : token |

#### Flux 4a – Demande de consultation de disponibilités

* ***Ressource***: PersonnePriseCharge
  * ***Nom***: idPersonnePriseCharge
  * ***Ressource***: Slot
  * ***Paramètres de recherche***: schedule.actor:Patient.identifier : token
* ***Ressource***: INS
  * ***Nom***: Slot
  * ***Ressource***: schedule.actor:Patient.identifier : token
* ***Ressource***: PersonnePhysique
  * ***Nom***: nomFamille
  * ***Ressource***: Slot
  * ***Paramètres de recherche***: schedule.actor:Patient.family : string
* ***Ressource***: prenomUsuel
  * ***Nom***: Slot
  * ***Ressource***: schedule.actor:Patient.given : string
* ***Ressource***: Professionnel
  * ***Nom***: idPP
  * ***Ressource***: Slot
  * ***Paramètres de recherche***: schedule.actor:Practitioner.identifier : token
* ***Ressource***: ExerciceProfessionnel
  * ***Nom***: nomExercice
  * ***Ressource***: Slot
  * ***Paramètres de recherche***: *schedule.actor:PractitionerRole.name : string*ouschedule.actor:Practitioner.family : string
* ***Ressource***: prenomExercice
  * ***Nom***: Slot
  * ***Ressource***: *schedule.actor:PractitionerRole.name : string* ouschedule.actor:Practitioner.family : string
* ***Ressource***: profession
  * ***Nom***: Slot
  * ***Ressource***: schedule.actor:PractitionerRole.role: token
* ***Ressource***: SavoirFaire
  * ***Nom***: specialite
  * ***Ressource***: Slot
  * ***Paramètres de recherche***: schedule.actor:PractitionerRole.specialty : token
* ***Ressource***: competenceExclusive
  * ***Nom***: Slot
  * ***Ressource***: schedule.actor:PractitionerRole.specialty : token
* ***Ressource***: orientationParticuliere
  * ***Nom***: Slot
  * ***Ressource***: schedule.actor:PractitionerRole.specialty : token
* ***Ressource***: descNonQualifiant
  * ***Nom***: Slot
  * ***Ressource***: schedule.actor:PractitionerRole.specialty : token
* ***Ressource***: competence
  * ***Nom***: Slot
  * ***Ressource***: schedule.actor:PractitionerRole.specialty : token
* ***Ressource***: droitExerciceComplementaire
  * ***Nom***: Slot
  * ***Ressource***: schedule.actor:PractitionerRole.specialty : token
* ***Ressource***: fonctionQualifiee
  * ***Nom***: Slot
  * ***Ressource***: schedule.actor:PractitionerRole.specialty : token
* ***Ressource***: qualificationPAC
  * ***Nom***: Slot
  * ***Ressource***: schedule.actor:PractitionerRole.specialty : token
* ***Ressource***: capaciteSavoirFaire
  * ***Nom***: Slot
  * ***Ressource***: schedule.actor:PractitionerRole.specialty : token
* ***Ressource***: SituationExercice
  * ***Nom***: adresseSE
  * ***Ressource***: Slot
  * ***Paramètres de recherche***: schedule.actor:PractitionerRole.location.address : stringou Pour une recherche sur une certaine distance d’un point géolocalisé : https://www.hl7.org/fhir/location.html#positionalschedule.actor:PractitionerRole.location.near : special[^8]
* ***Ressource***: telecommunication
  * ***Nom***: Slot
  * ***Ressource***: schedule.actor:PractitionerRole.telecom : token
* ***Ressource***: Contact
  * ***Nom***: idContact
  * ***Ressource***: Slot
  * ***Paramètres de recherche***: schedule.actor:RelatedPerson.identifier : token
* ***Ressource***: adresse
  * ***Nom***: Slot
  * ***Ressource***: schedule.actor:RelatedPerson.address : string
* ***Ressource***: telecommunication
  * ***Nom***: Slot
  * ***Ressource***: schedule.actor:RelatedPerson.telecom: token
* ***Ressource***: PersonnePhysique
  * ***Nom***: nomFamille
  * ***Ressource***: Slot
  * ***Paramètres de recherche***: schedule.actor:RelatedPerson.name : string
* ***Ressource***: prenomUsuel
  * ***Nom***: Slot
  * ***Ressource***: schedule.actor:RelatedPerson.name  : string
* ***Ressource***: Lieu
  * ***Nom***: nom
  * ***Ressource***: Slot
  * ***Paramètres de recherche***: schedule.actor:Location.name : string
* ***Ressource***: description
  * ***Nom***: ` `Slot
  * ***Ressource***: Il n’existe pas de critère de recherche équivalent dans FHIR
* ***Ressource***: identifiant
  * ***Nom***: Slot
  * ***Ressource***: schedule.actor:Location.identifier : token
* ***Ressource***: adresse
  * ***Nom***: Slot
  * ***Ressource***: schedule.actor:Location.address : stringou schedule.actor:Location.near : special13</sup>
* ***Ressource***: EquipementOperationnel
  * ***Nom***: idRessourceMaterielle
  * ***Ressource***: Slot
  * ***Paramètres de recherche***: schedule.actor:Device.identifier : token
* ***Ressource***: typeEquipement
  * ***Nom***: Slot
  * ***Ressource***: schedule.actor:Device.type : token
* ***Ressource***: libelle
  * ***Nom***: Slot
  * ***Ressource***: schedule.actor:Device.device-name : string
* ***Ressource***: reference
  * ***Nom***: Slot
  * ***Ressource***: schedule.actor:Device.model : string
* ***Ressource***: OrganisationInterne
  * ***Nom***: identifiantOI
  * ***Ressource***: Slot
  * ***Paramètres de recherche***: schedule.actor:HealthcareService.identifier : token
* ***Ressource***: nom
  * ***Nom***: Slot
  * ***Ressource***: schedule.actor:HealthcareService.name : string
* ***Ressource***: telecommunication
  * ***Nom***: Slot
  * ***Ressource***: Il n’existe pas de critère de recherche équivalent dans FHIR
* ***Ressource***: EntiteGeographique
  * ***Nom***: idNat_Struct
  * ***Ressource***: Slot
  * ***Paramètres de recherche***: schedule.actor:HealthcareService.organization.identifier : token
* ***Ressource***: denominationEG
  * ***Nom***: Slot
  * ***Ressource***: schedule.actor:HealthcareService.organization.name : string
* ***Ressource***: adresseEG
  * ***Nom***: Slot
  * ***Ressource***: schedule.actor:HealthcareService.organization.address : string
* ***Ressource***: Creneau
  * ***Nom***: idCreneau
  * ***Ressource***: Slot
  * ***Paramètres de recherche***: identifier : token
* ***Ressource***: statut
  * ***Nom***: Slot
  * ***Ressource***: status : token
* ***Ressource***: dateDebutRecherche
  * ***Nom***: Slot
  * ***Ressource***: Ce critère représente le début de l’intervalle de recherche. Le critère de recherche GAP_Slot-earliestStart basé sur start et accompagné d’un comparateur est créé :start : date
* ***Ressource***: dateFinRecherche
  * ***Nom***: Slot
  * ***Ressource***: Ce critère représente la fin de l’intervalle de recherche. Le critère de recherche GAP_Slot-latestStart basé sur *start* et accompagné d’un comparateur est créé :start : date

#### Flux 4b – Demande de consultation de rendez-vous

* ***Ressource***: PersonnePriseCharge
  * ***Nom***: idPersonnePriseCharge
  * ***Ressource***: Appointment
  * ***Paramètres de recherche***: actor:Patient.identifier : tokenou patient.identifier : token 
* ***Ressource***: INS
  * ***Nom***: Appointment
  * ***Ressource***: actor:Patient.identifier : tokenoupatient.identifier : token
* ***Ressource***: Professionnel
  * ***Nom***: idPP
  * ***Ressource***: Appointment
  * ***Paramètres de recherche***: actor:Practitioner.identifier : token ou practitioner.identifier : token 
* ***Ressource***: Contact
  * ***Nom***: idContact
  * ***Ressource***: Appointment
  * ***Paramètres de recherche***: actor:RelatedPerson.identifier : token
* ***Ressource***: Lieu
  * ***Nom***: identifiant
  * ***Ressource***: Appointment
  * ***Paramètres de recherche***: actor:Location.identifier : tokenoulocation.identifier : token
* ***Ressource***: EquipementOperationnel
  * ***Nom***: idRessourceMaterielle
  * ***Ressource***: Appointment
  * ***Paramètres de recherche***: actor:Device.identifier : token
* ***Ressource***: OrganismeInterne
  * ***Nom***: identifiantOI
  * ***Ressource***: Appointment
  * ***Paramètres de recherche***: actor:HealthcareService.identifier : token
* ***Ressource***: RendezVous
  * ***Nom***: idRDV
  * ***Ressource***: Appointment
  * ***Paramètres de recherche***: identifier : token
* ***Ressource***: dateDebut
  * ***Nom***: Appointment
  * ***Ressource***: Ce critère représente le début de l’intervalle de recherche. Le critère de recherche GAP_Appointment-earliestStart basé sur start et accompagné d’un comparateur est créé :date : date
* ***Ressource***: dateFin
  * ***Nom***: Appointment
  * ***Ressource***: Ce critère représente la fin de l’intervalle de recherche. Le critère de recherche GAP_Appointment-latestStart</i> basé sur *start* et accompagné d’un comparateur est créé :date : date
* ***Ressource***: datePriseRDV
  * ***Nom***: Appointment
  * ***Ressource***: *created : token*
* ***Ressource***: type
  * ***Nom***: Appointment
  * ***Ressource***: service-type : token
* ***Ressource***: statut
  * ***Nom***: Appointment
  * ***Ressource***: status : token
* ***Ressource***: titreRDV
  * ***Nom***: Appointment
  * ***Ressource***: *description : string*
* ***Ressource***: pieceJointe
  * ***Nom***: Appointment
  * ***Ressource***: supporting-info : reference
* ***Ressource***: priorite
  * ***Nom***: Appointment
  * ***Ressource***: *priority : token*
* ***Ressource***: commentaire
  * ***Nom***: Appointment
  * ***Ressource***: *description : string*

#### Flux 5a – Réponse à la demande de consultation de disponibilités

* ***Classe***: Creneau
  * ***Attribut***: idCreneau : [1..1] Identifiant
  * ***Ressource***: Slot FrSlot
  * ***Elément***: identifier : Identifier [0..*]
* ***Classe***: statut : [1..1] Code
  * ***Attribut***: Slot FrSlot
  * ***Ressource***: status : code [1..1]
* ***Classe***: dateDebut : [1..1] DateHeure
  * ***Attribut***: Slot FrSlot
  * ***Ressource***: start : instant [1..1]
* ***Classe***: dateFin : [1..1] DateHeure
  * ***Attribut***: Slot FrSlot
  * ***Ressource***: end : instant [1..1]
* ***Classe***: informationComplementaire : [0..1]
  * ***Attribut***: Slot FrSlot
  * ***Ressource***: comment : string [0..1]
* ***Classe***: L’agenda est décrit dans une partie spécifique.Agenda [1..1]
  * ***Attribut***: Slot FrSlot
  * ***Ressource***: schedule : Reference [1..1](FrSchedule)
* ***Classe***: Agenda
  * ***Attribut***: idAgenda : [1..1] Identifiant
  * ***Ressource***: Schedule FrSchedule
  * ***Elément***: identifier : Identifier [0..*]
* ***Classe***: Les acteurs de l’agenda sont décrits dans une partie spécifique.PersonnePriseCharge [0..*]
  * ***Attribut***: Schedule FrSchedule
  * ***Ressource***: Cette référence peut être multiple lorsqu’un agenda concerne un ensemble d’acteurs. En établissement par exemple, un spécialiste, une infirmière et un équipement peuvent disposer d’un même agenda. La prise de rendez-vous sur cet agenda concerne des services de soins spécifiques nécessitant la disponibilité de ces trois acteurs.actor : Reference [1..*][^11]Il est préconisé de s’appuyer sur les profils AsPractitionerRoleProfile de l’annuaire santé.(Fr[RelatedPerson] | [Device] | [FrHealthcareService] | [FrLocation] | [FrPatient] | [FrPractitioner] | PractitionerRole[^12])
* ***Classe***: Contact [0..*]
* ***Classe***: Professionnel [0..*]
* ***Classe***: OrganisationInterne [0..*]
* ***Classe***: Lieu [0..*]
* ***Classe***: EquipementProfessionnel [0..*]
* ***Classe***: PersonnePriseCharge
  * ***Attribut***: idPersonnePriseCharge : [0..*] Identifiant
  * ***Ressource***: PatientFrPatient
  * ***Elément***: identifier : Identifier [0..*]
* ***Classe***: L’objet métier INS de type INS regroupe les attributs détaillés ci-dessous.INS : [0..1] INS[^13]- matriculeINS : [1..1] Identifiant- nomFamille : [1..1] Texte- prenomActeNaissance : [1..1] Texte- premierPrenomActeNaissance : [1..1] Texte- nomUtilise : [1..1] Texte- prenomUtilise : [1..1] Texte- sexe : [1..1] Code- dateNaissance : [1..1] DateHeure- lieuNaissance : [1..1] Texte
  * ***Attribut***: PatientFrPatient
  * ***Ressource***: - Identifier : Identifier [0..*] - Slice « INS-NIR » - Slice « INS-NIA »  - Slice « INS-C »- name[1..*].family : string [1..1] (FrHumanName)- name[1..*].text : string [0..1] (FrHumanName)- name[1..*].given : string [1..1] (FrHumanName)Slice officialName, Patient.name.use prenant la valeur « official »)- name[1..*].family : string [0..1] (FrHumanName)- name[1..*].given : string [0..*] (FrHumanName)Slice usualName, Patient.name.use prenant la valeur « usual »- gender : code [1..1]- birthDate : date [1..1]- birthPlace : Extension(Address) [0..1] Extension (BirthPlace)
* ***Classe***: adresseCorrespondance : [0..*] Adresse
  * ***Attribut***: PatientFrPatient
  * ***Ressource***: address : FrAddress [0..*]
* ***Classe***: telecommunication : [0..*] Telecommunication
  * ***Attribut***: PatientFrPatient
  * ***Ressource***: telecom : FrContactPoint [0..*]
* ***Classe***: PersonnePhysique
  * ***Attribut***: nomFamille : [0..1] Texte
  * ***Ressource***: PatientFrPatient
  * ***Elément***: name[1..*].family : string [0..1](FrHumanName)Slice « usualName », Patient.name.use prenant la valeur « usual »
* ***Classe***: prenomUsuel : [0..1] Texte
  * ***Attribut***: PatientFrPatient
  * ***Ressource***: name[1..*].given : string [0..*](FrHumanName)Slice « usualName », Patient.name.use prenant la valeur « usual »
* ***Classe***: Professionnel
  * ***Attribut***: idPP : [1..1] Identifiant
  * ***Ressource***: PractitionerFrPractitioner
  * ***Elément***: identifier : Identifier [0..*]
* ***Classe***: ExerciceProfessionnel
  * ***Attribut***: nomExercice : [0..1] Texte
  * ***Ressource***: PractitionerRoleAsPractitionerRoleProfile
  * ***Elément***: name[0..*].family : string [0..1](FrHumanName)Extension française (PractitionerRoleName)
* ***Classe***: prenomExercice : [0..1] Texte
  * ***Attribut***: PractitionerRoleAsPractitionerRoleProfile
  * ***Ressource***: name[0..*].given : string [0..*](FrHumanName)Extension française (PractitionerRoleName)
* ***Classe***: profession : [0..1] Code
  * ***Attribut***: PractitionerRoleAsPractitionerRoleProfile
  * ***Ressource***: Code : CodeableConcept [0..*]- Slice « professionG15 »- Slice « professionR94 »- Slice « professionR95 »- Slice « professionR291 »
* ***Classe***: SituationExercice
  * ***Attribut***: adresseSE : [1..*] Adresse
  * ***Ressource***: PractitionerRoleAsPractitionerRoleProfile
  * ***Elément***: location[0..*].address : FrAddressExtended [0..1](AsLocationProfile)
* ***Classe***: telecommunication : [0..*] Telecommunication
  * ***Attribut***: PractitionerRoleAsPractitionerRoleProfile
  * ***Ressource***: telecom : FrContactPoint [0..*]
* ***Classe***: SavoirFaire
  * ***Attribut***: specialite: [0..1] Code
  * ***Ressource***: PractitionerRoleAsPractitionerRoleProfile
  * ***Elément***: specialty : CodeableConceptTimed [0..*]Slice «  savoirFaireR38 »
* ***Classe***: competence: [0..1] Code
  * ***Attribut***: PractitionerRoleAsPractitionerRoleProfile
  * ***Ressource***: specialty : CodeableConceptTimed [0..*]Slice «  savoirFaireR39 »
* ***Classe***: competenceExclusive: [0..1] Code
  * ***Attribut***: PractitionerRoleAsPractitionerRoleProfile
  * ***Ressource***: specialty : CodeableConceptTimed [0..*]Slice «  savoirFaireR40 »
* ***Classe***: orientationParticuliere: [0..1] Code
  * ***Attribut***: PractitionerRole AsPractitionerRoleProfile
  * ***Ressource***: specialty : CodeableConceptTimed [0..*]Slice «  savoirFaireG13 »
* ***Classe***: capaciteSavoirFaire: [0..1] Code
  * ***Attribut***: PractitionerRoleAsPractitionerRoleProfile
  * ***Ressource***: specialty : CodeableConceptTimed [0..*]Slice «  savoirFaireR43 »
* ***Classe***: qualificationPAC: [0..1] Code
  * ***Attribut***: PractitionerRoleAsPractitionerRoleProfile
  * ***Ressource***: specialty : CodeableConceptTimed [0..*]Slice «  savoirFaireR44 »
* ***Classe***: fonctionQualifiee: [0..1] Code
  * ***Attribut***: PractitionerRoleAsPractitionerRoleProfile
  * ***Ressource***: specialty : CodeableConceptTimed [0..*]Slice «  savoirFaireR45 »
* ***Classe***: descNonQualifiant: [0..1] Code
  * ***Attribut***: PractitionerRoleAsPractitionerRoleProfile
  * ***Ressource***: specialty : CodeableConceptTimed [0..*]Slice «  savoirFaireR42 »
* ***Classe***: droitExerciceComplementaire: [0..1] Code
  * ***Attribut***: PractitionerRoleAsPractitionerRoleProfile
  * ***Ressource***: specialty : CodeableConceptTimed [0..*]Slice «  savoirFaireR97 »
* ***Classe***: OrganisationInterne
  * ***Attribut***: identifiantOI : [1..1] Identifiant
  * ***Ressource***: HealthcareServiceFrHealthcareService
  * ***Elément***: identifier : Identifier [0..*]
* ***Classe***: nom : [0..1] Texte
  * ***Attribut***: HealthcareServiceFrHealthcareService
  * ***Ressource***: name : string [0..1]
* ***Classe***: telecommunication : [0..*] Telecommunication
  * ***Attribut***: HealthcareServiceFrHealthcareService
  * ***Ressource***: telecom : FrContactPoint [0..*]
* ***Classe***: EntiteGeographique
  * ***Attribut***: idNat_Struct : [1..1] Identifiant
  * ***Ressource***: OrganizationFrOrganization
  * ***Elément***: identifier : Identifier [0..*]
* ***Classe***: denominationEG : [0..1] Texte
  * ***Attribut***: OrganizationFrOrganization
  * ***Ressource***: name : string [0..1]
* ***Classe***: adresseEG : [0..*] Adresse
  * ***Attribut***: OrganizationFrOrganization
  * ***Ressource***: address : Address [0..*]
* ***Classe***: Lieu
  * ***Attribut***: identifiant : [1..1] Identifiant
  * ***Ressource***: LocationFrLocation
  * ***Elément***: identifier : Identifier [1..*]
* ***Classe***: nom : [0..1] Texte
  * ***Attribut***: LocationFrLocation
  * ***Ressource***: name : string [0..1]
* ***Classe***: description : [0..1] Texte
  * ***Attribut***: LocationFrLocation
  * ***Ressource***: description : string [0..1]
* ***Classe***: adresse : [0..*] Adresse
  * ***Attribut***: LocationFrLocation
  * ***Ressource***: address : Address [0..1]
* ***Classe***: EquipementOperationnel
  * ***Attribut***: idRessourceMaterielle : [1..1] Identifiant
  * ***Ressource***: Device
  * ***Elément***: identifier : Identifier [0..*]
* ***Classe***: typeEquipement : [0..1] Code
  * ***Attribut***: Device
  * ***Ressource***: type : CodeableConcept [0..1]
* ***Classe***: libelle : [0..1] Texte
  * ***Attribut***: Device
  * ***Ressource***: deviceName[0..*].name : string [1..1]
* ***Classe***: reference : [0..1] Code
  * ***Attribut***: Device
  * ***Ressource***: modelNumber : string [0..1]
* ***Classe***: Contact
  * ***Attribut***: idContact : [1..1] Identifiant
  * ***Ressource***: RelatedPersonFrRelatedPerson
  * ***Elément***: identifier : Identifier [1..1]
* ***Classe***: adresse : [0..1] Adresse
  * ***Attribut***: RelatedPersonFrRelatedPerson
  * ***Ressource***: address : Address [0..*]
* ***Classe***: telecommunication : [0..*] Telecommunication
  * ***Attribut***: RelatedPersonFrRelatedPerson
  * ***Ressource***: telecom : FrContactPoint [0..*]
* ***Classe***: PersonnePhysique
  * ***Attribut***: nomFamille : [0..*] Texte
  * ***Ressource***: RelatedPersonFrRelatedPerson
  * ***Elément***: name[0..*].family : string [0..1](FrHumanName)
* ***Classe***: prenomUsuel : [0..*] Texte
  * ***Attribut***: RelatedPersonFrRelatedPerson
  * ***Ressource***: name[0..*].given : string [0..*](FrHumanName)

#### Flux 5b – Réponse à la demande de consultation de rendez-vous

* ***Classe***: RendezVous
  * ***Attribut***: idRDV : [1..1] Identifiant
  * ***Ressource***: AppointmentFrAppointment
  * ***Elément***: identifier : Identifier [0..*]
* ***Classe***: dateDebutRDV : [0..1] DateHeure
  * ***Attribut***: AppointmentFrAppointment
  * ***Ressource***: start : instant [0..1]
* ***Classe***: dateFinRDV : [0..1] DateHeure
  * ***Attribut***: AppointmentFrAppointment
  * ***Ressource***: end : instant [0..1]
* ***Classe***: datePriseRDV : [0..1] DateHeure
  * ***Attribut***: AppointmentFrAppointment
  * ***Ressource***: created : dateTime [0..1]
* ***Classe***: type: [0..1] Code
  * ***Attribut***: AppointmentFrAppointment
  * ***Ressource***: serviceType : CodeableConcept [0..*]
* ***Classe***: statut : [1..1] Code
  * ***Attribut***: AppointmentFrAppointment
  * ***Ressource***: status : code [1..1]
* ***Classe***: titreRDV : [0..1] Texte
  * ***Attribut***: AppointmentFrAppointment
  * ***Ressource***: description : string [0..1]
* ***Classe***: pieceJointe : [0..*] ObjetBinaire
  * ***Attribut***: AppointmentFrAppointment
  * ***Ressource***: supportingInformation : Reference [0..*](any)
* ***Classe***: priorite : [0..1] Code
  * ***Attribut***: AppointmentFrAppointment
  * ***Ressource***: priority : unsignedInt [0..1]
* ***Classe***: commentaire : [0..1] Texte
  * ***Attribut***: AppointmentFrAppointment
  * ***Ressource***: comment : string [0..1]
* ***Classe***: Les participants sont décrits dans une partie spécifiquePersonnePriseCharge [0..*]
  * ***Attribut***: AppointmentFrAppointment
  * ***Ressource***: Cette référence peut être multiple lorsqu’un agenda concerne un ensemble d’acteurs. En établissement par exemple, un spécialiste, une infirmière et un équipement peuvent disposer d’un même agenda. La prise de rendez-vous sur cet agenda concerne des services de soins spécifiques nécessitant la disponibilité de ces trois acteurs.Il est préconisé de s’appuyer sur les profils AsPractitionerRoleProfile de l’annuaire santé.participant[1..*].actor : Reference [0..1][^15] (Fr[RelatedPerson] | [Device] | [FrHealthcareService] | [FrLocation] | [FrPatient] | [FrPractitioner] | PractitionerRole[^16])
* ***Classe***: Contact [0..*]
* ***Classe***: Professionnel [0..*]
* ***Classe***: OrganisationInterne [0..*]
* ***Classe***: Lieu [0..*]
* ***Classe***: EquipementOperationnel [0..*]
* ***Classe***: Professionnel
  * ***Attribut***: idPP : [1..1] Identifiant
  * ***Ressource***: PractitionerFrPractitioner
  * ***Elément***: identifier : Identifier [0..*]
* ***Classe***: Lieu
  * ***Attribut***: identifiant : [1..1] Identifiant
  * ***Ressource***: LocationFrLocation
  * ***Elément***: identifier : Identifier [1..*]
* ***Classe***: PersonnePriseCharge
  * ***Attribut***: idPersonnePriseCharge : [0..1] Identifiant
  * ***Ressource***: PatientFrPatient
  * ***Elément***: identifier : Identifier [0..*]
* ***Classe***: L’objet métier INS de type INS regroupe les attributs détaillés ci-dessous.INS : [0..1] INS[^17]- matriculeINS : [1..1] Identifiant- nomFamille : [1..1] Texte- prenomActeNaissance : [1..1] Texte- premierPrenomActeNaissance : [1..1] Texte- nomUtilise : [1..1] Texte- prenomUtilise : [1..1] Texte- sexe : [1..1] Code- dateNaissance : [1..1] DateHeure- lieuNaissance : [1..1] Texte
  * ***Attribut***: PatientFrPatient
  * ***Ressource***: - Identifier : Identifier [0..*] - Slice « INS-NIR » - Slice « INS-NIA »  - Slice « INS-C »- name[1..*].family : string [1..1] (FrHumanName)- name[1..*].text : string [0..1] (FrHumanName)- name[1..*].given : string [1..1] (FrHumanName)Slice officialName, Patient.name.use prenant la valeur « official »)- name[1..*].family : string [0..1] (FrHumanName)- name[1..*].given : string [0..*] (FrHumanName)Slice usualName, Patient.name.use prenant la valeur « usual »- gender : code [1..1]- birthDate : date [1..1]- birthPlace : Extension(Address) [0..1]Extension (BirthPlace)
* ***Classe***: EquipementOperationnel
  * ***Attribut***: idRessourceOperationnelle : [1..1] Identifiant
  * ***Ressource***: DeviceFrDevice
  * ***Elément***: identifier : Identifier [0..*]
* ***Classe***: OrganisationInterne
  * ***Attribut***: identifiantOI : [1..1] Identifiant
  * ***Ressource***: HealthcareServiceFrHealthcareService
  * ***Elément***: identifier : Identifier [0..*]
* ***Classe***: Contact
  * ***Attribut***: idContact : [1..1] Identifiant
  * ***Ressource***: RelatedPersonFrRelatedPerson
  * ***Elément***: identifier : Identifier [1..1]

#### Flux 6a – Création de rendez-vous

* ***Classe***: RendezVous
  * ***Attribut***: idRDV : [1..1] Identifiant
  * ***Ressource***: AppointmentFrAppointment
  * ***Elément***: identifier : Identifier [0..*]
* ***Classe***: dateDebutRDV : [1..1] DateHeure
  * ***Attribut***: AppointmentFrAppointment
  * ***Ressource***: start : instant [0..1]
* ***Classe***: dateFinRDV : [0..1] DateHeure
  * ***Attribut***: AppointmentFrAppointment
  * ***Ressource***: end : instant [0..1]
* ***Classe***: datePriseRDV : [1..1] DateHeure
  * ***Attribut***: AppointmentFrAppointment
  * ***Ressource***: created : dateTime [0..1]
* ***Classe***: type: [0..1] Code
  * ***Attribut***: AppointmentFrAppointment
  * ***Ressource***: serviceType : CodeableConcept [0..*]
* ***Classe***: statut :[1..1] Code
  * ***Attribut***: AppointmentFrAppointment
  * ***Ressource***: status : code [1..1]- « proposed » dans le cadre d’une demande de rendez-vous- « booked » dans le cadre de la déclaration d’un rendez-vous pris- Cf. la documentation du standard pour les autres statuts
* ***Classe***: pieceJointe : [0..*] ObjetBinaire
  * ***Attribut***: AppointmentFrAppointment
  * ***Ressource***: supportingInformation : Reference [0..*](any)
* ***Classe***: priorite : [0..1] Code
  * ***Attribut***: AppointmentFrAppointment
  * ***Ressource***: priority : unsignedInt [0..1]
* ***Classe***: titreRDV : [0..1] Texte
  * ***Attribut***: AppointmentFrAppointment
  * ***Ressource***: description : string [0..1]
* ***Classe***: commentaire : [0..1] Texte
  * ***Attribut***: AppointmentFrAppointment
  * ***Ressource***: comment : string [0..1]
* ***Classe***: Le créneau est décrit dans une partie spécifiqueCreneau [0..*]
  * ***Attribut***: AppointmentFrAppointment
  * ***Ressource***: slot : Reference [0..*](FrSlot)
* ***Classe***: Les participants sont décrits dans une partie spécifique.PersonnePriseCharge [0..*]
  * ***Attribut***: AppointmentFrAppointment
  * ***Ressource***: Cette référence peut être multiple lorsqu’un agenda concerne un ensemble d’acteurs. En établissement par exemple, un spécialiste, une infirmière et un équipement peuvent disposer d’un même agenda. La prise de rendez-vous sur cet agenda concerne des services de soins spécifiques nécessitant la disponibilité de ces trois acteurs.Il est préconisé de s’appuyer sur le profil AsPractitionerRoleProfile de l’annuaire santé.participant[1..*].actor : Reference [0..1][^20] (Fr[RelatedPerson] | [Device] | [FrHealthcareService] | [FrLocation] | [FrPatient] | [FrPractitioner] | PractitionerRole[^21])- « needs-action » dans le cadre d’une demande de rendez-vous avec attente de confirmation- « accepted » dans le cadre de la déclaration d’un rendez-vous pris et confirmé.- Cf. la documentation du standard pour les autres statuts
* ***Classe***: Contact [0..*]
* ***Classe***: Professionnel [0..*]
* ***Classe***: OrganisationInterne [0..*]
* ***Classe***: Lieu [0..*]
* ***Classe***: EquipementOperationnel [0..*]
* ***Classe***: Les participants sont décrits dans une partie spécifique.PersonnePriseCharge [0..*]
  * ***Attribut***: AppointmentFrAppointment
  * ***Ressource***: Extension (FrAppointmentOperator)valueRefrence : reference [0..*]
* ***Classe***: Contact [0..*]
* ***Classe***: Professionnel [0..*]
* ***Classe***: OrganisationInterne [0..*]
* ***Classe***: Professionnel
  * ***Attribut***: idPP : [0..1] Identifiant
  * ***Ressource***: PractitionerFrPractitioner
  * ***Elément***: identifier : Identifier [0..*]
* ***Classe***: ExerciceProfessionnel
  * ***Attribut***: nomExercice : [0..1] Texte
  * ***Ressource***: PractitionerRoleAsPractitionerRoleProfile
  * ***Elément***: name[0..*].family : string [0..1](FrHumanName)Extension française (PractitionerRoleName)
* ***Classe***: prenomExercice : [0..1] Texte
  * ***Attribut***: PractitionerRoleAsPractitionerRoleProfile
  * ***Ressource***: name[0..*].given : string [0..*](FrHumanName)Extension française (PractitionerRoleName)
* ***Classe***: profession : [0..1] Code
  * ***Attribut***: PractitionerRoleAsPractitionerRoleProfile
  * ***Ressource***: Code : CodeableConcept [0..*]- Slice « professionG15 »- Slice « professionR94 »- Slice « professionR95 »- Slice « professionR291 »
* ***Classe***: SituationExercice
  * ***Attribut***: adresseSE : [1..*] Adresse
  * ***Ressource***: PractitionerRoleAsPractitionerRoleProfile
  * ***Elément***: location[0..*].address : FrAddressExtended [0..1](AsLocationProfile)
* ***Classe***: telecommunication : [0..*] Telecommunication
  * ***Attribut***: PractitionerRoleAsPractitionerRoleProfile
  * ***Ressource***: telecom : FrContactPoint [0..*]
* ***Classe***: Lieu
  * ***Attribut***: identifiant : [1..1] Identifiant
  * ***Ressource***: LocationFrLocation
  * ***Elément***: identifier : Identifier [1..*]
* ***Classe***: PersonnePriseCharge
  * ***Attribut***: idPersonnePriseCharge : [0..*] Identifiant
  * ***Ressource***: PatientFrPatient
  * ***Elément***: identifier : Identifier [0..*]
* ***Classe***: L’objet métier INS de type INS regroupe les attributs détaillés ci-dessous.INS : [0..1] INS[^23]- matriculeINS : [1..1] Identifiant- nomFamille : [1..1] Texte- prenomActeNaissance : [1..1] Texte- premierPrenomActeNaissance : [1..1] Texte- nomUtilise : [1..1] Texte- prenomUtilise : [1..1] Texte- sexe : [1..1] Code- dateNaissance : [1..1] DateHeure- lieuNaissance : [1..1] Texte
  * ***Attribut***: PatientFrPatient
  * ***Ressource***: - Identifier : Identifier [0..*] - Slice « INS-NIR » - Slice « INS-NIA »  - Slice « INS-C »- name[1..*].family : string [1..1] (FrHumanName)- name[1..*].text : string [0..1] (FrHumanName)- name[1..*].given : string [1..1] (FrHumanName)Slice officialName, Patient.name.use prenant la valeur « official »)- name[1..*].family : string [0..1] (FrHumanName)- name[1..*].given : string [0..*] (FrHumanName)Slice usualName, Patient.name.use prenant la valeur « usual »- gender : code [1..1]- birthDate : date [1..1]- birthPlace : Extension(Address) [0..1]Extension (BirthPlace)
* ***Classe***: adresseCorrespondance : [0..*] Adresse
  * ***Attribut***: PatientFrPatient
  * ***Ressource***: address : FrAddress [0..*]
* ***Classe***: telecommunication : [0..*] Telecommunication
  * ***Attribut***: PatientFrPatient
  * ***Ressource***: telecom : FrContactPoint [0..*]
* ***Classe***: PersonnePhysique
  * ***Attribut***: nomFamille : [0..1] Texte
  * ***Ressource***: PatientFrPatient
  * ***Elément***: name[1..*].family : string [0..1](FrHumanName)Slice « usualName », Patient.name.use prenant la valeur « usual »
* ***Classe***: prenomUsuel : [0..1] Texte
  * ***Attribut***: PatientFrPatient
  * ***Ressource***: name[1..*].given : string [0..*](FrHumanName)Slice « usualName », Patient.name.use prenant la valeur « usual »
* ***Classe***: EquipementOperationnel
  * ***Attribut***: idRessourceMaterielle : [1..1] Identifiant
  * ***Ressource***: DeviceFrDevice
  * ***Elément***: identifier : Identifier [0..*]
* ***Classe***: OrganisationInterne
  * ***Attribut***: identifiantOI : [1..1] Identifiant
  * ***Ressource***: HealthcareServiceFrHealthcareService
  * ***Elément***: identifier : Identifier [0..*]
* ***Classe***: nom : [0..1] Texte
  * ***Attribut***: HealthcareServiceFrHealthcareService
  * ***Ressource***: name : string [0..1]
* ***Classe***: telecommunication : [0..*] Telecommunication
  * ***Attribut***: HealthcareServiceFrHealthcareService
  * ***Ressource***: telecom : FrContactPoint [0..*]
* ***Classe***: Contact
  * ***Attribut***: idContact : [1..1] Identifiant
  * ***Ressource***: RelatedPersonFrRelatedPerson
  * ***Elément***: identifier : Identifier [1..1]
* ***Classe***: adresse : [0..1] Adresse
  * ***Attribut***: RelatedPersonFrRelatedPerson
  * ***Ressource***: address : Address [0..*]
* ***Classe***: telecommunication : [0..*] Telecommunication
  * ***Attribut***: RelatedPersonFrRelatedPerson
  * ***Ressource***: telecom : FrContactPoint [0..*]
* ***Classe***: PersonnePhysique
  * ***Attribut***: nomFamille : [0..*] Texte
  * ***Ressource***: RelatedPersonFrRelatedPerson
  * ***Elément***: name[0..*].family : string [0..1](FrHumanName)
* ***Classe***: prenomUsuel : [0..*] Texte
  * ***Attribut***: RelatedPersonFrRelatedPerson
  * ***Ressource***: name[0..*].given : string [0..*](FrHumanName)
* ***Classe***: Creneau
  * ***Attribut***: idCrenau : Identifiant [1..1]
  * ***Ressource***: SlotFrSlot
  * ***Elément***: identifier : Identifier [0..*]

peut préciser le degré d’urgence du rendez-vous en utilisant l’élément **appointmentType** et le jeu de valeurs proposé par le standard[^24] ou en attribuant une priorité au rendez-vous avec l’élément **priority**.

### Mise en correspondance avec iCalendar

Cette annexe met en correspondance les composants et les propriétés iCalendar avec les ressources et les éléments FHIR de ce volet. Ceci est proposé dans le but de faciliter l’intégration de certains éléments dans les agendas personnels des utilisateurs.

#### VAVAILABILITY et AvailabilityTime

Le composant VAVAILABILITY définit une durée sur laquelle la ou les disponibilités de la ressource vont être décrites. Sur toute cette durée, la ressource est par défaut non disponible, et ce sont les sous-composants AVAILABILITY qui permettent de définir des plages de disponibilité, récursives ou non, sur cette période. Ci-dessous un schéma représentant les disponibilités d’une ressource sur la semaine de travail allant du 17/07/2017 au 21/07/2017. La première disponibilité, en rouge, est une disponibilité de 8h à 19h récurrente sur 4 jours. La deuxième disponibilité, en bleu, est une disponibilité simple de 8h à 13h le 21 juillet.

Le sous-composant AVAILABILITY correspond à l’extension française **AvailabilityTime** de la ressource **Schedule** avec **type = free**. Le tableau suivant met en correspondance certaines propriétés du sous-composant AVAILABILITY avec les éléments de l’extension.

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| **UID** | TEXT 1..1 |   | Identifiant unique du sous-composant | availabilityTime.id |
| **CREATED** | DATE-TIME 0..1 |   | Date de création du sous-composant dans le calendrier | availabilityTime.created |
| **DTSTART** | DATE-TIME 1..1 (default)DATE 1..1 | VALUE = DATE-TIME / DATE | La date/temps de début de la plage de disponibilité | availabilityTime.start |
| **RRULE** | RECUR 0..1 |   | Règle de répétition de la plage de disponibilité | AvailabilityTime.rrule |
| **DTEND** | DATE-TIME 0..1 (default)DATE 0..1 | VALUE = DATE-TIME / DATE | La date/temps de fin de la plage de disponibilité | availabilityTime.end |

#### VFREEBUSY et Slot

Ce composant regroupe les informations relatives à une demande concernant le temps libre/occupé d’une ressource ou une réponse à une demande concernant le temps libre/occupé d’une ressource.

Ce composant correspond à la ressource Slot. Le tableau suivant met en correspondance certaines propriétés du composant VFREEBUSY avec les éléments de la ressource.

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| **UID** | TEXT 1..1 |   | Identifiant unique du composant | identifier |
| **DTSTART** | DATE-TIME 0..1 (default)DATE 0..1 | VALUE = DATE-TIME / DATE | La date/temps de début du temps libre ou occupé décrit par le composant | start |
| **DTEND** | DATE-TIME 0..1 (default)DATE 0..1 | VALUE = DATE-TIME / DATE | La date/temps de fin du temps libre ou occupé décrit par le composant | end |
| **ATTENDEE** | CAL-ADDRESS 0..* | CN | Identification de la ressource concernée par cette demande/description de temps libre/occupé | schedule.actor |
| **COMMENT** | TEXT 0..* |   | Un commentaire destiné à l’utilisateur qui va consulter le composant | comment |
| **FREEBUSY** | PERIOD 0..* | FBTYPE = FREE / BUSY… | Sous périodes de temps libre ou occupé décrites par le composant | Status (mêmes codes) |

#### VEVENT et Appointment

Ce composant regroupe les informations relatives à un évènement (un rendez-vous par exemple).

Lorsqu’il décrit un rendez-vous, ce composant correspond à la ressource **Appointment**.

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| **DTSTAMP** | DATE-TIME 1..1 |   | Date à laquelle le composant a été créé |   |
| **UID** | TEXT 1..1 |   | Identifiant unique du composant | identifier |
| **DTSTART** | DATE-TIME 0..1 (default)DATE 0..1 | VALUE = DATE-TIME / DATE | La date/temps de début de l’évènement décrit par le composant | start |
| **CLASS** | TEXT 0..1(PUBLIC / PRIVATE / CONFIDENTIAL) |   | Définition de la classe d’accès au composant |   |
| **CREATED** | DATE-TIME 0..1 |   | Date de création du composant dans le calendrier | created |
| **DESCRIPTION** | TEXT 0..1 |   | Description complète du composant | description |
| **GEO** | FLOAT 0..1 |   | Géolocalisation du lieu de l’évènement décrit par le composant |   |
| **LAST-MODIFIED** | DATE-TIME 0..1 |   | Date de révision du composant |   |
| **LOCATION** | TEXT 0..1 |   | Lieu de l’évènement décrit par le composant | Participant de type Location |
| **ORGANIZER** | CAL-ADDRESS 0..1 | CNDIRSENT-BYEMAIL | Identification de l’organisateur de l’évènement | participant |
| **PRIORITY** | INTEGER 0..1[0..9] |   | Priorité du composant | priority |
| **SEQUENCE** | INTEGER 0..1 |   | Numéro séquentiel de la révision du composant |   |
| **STATUS** | TEXT 0..1(TENTATIVE / CONFIRMED / CANCELLED) |   | Statut de confirmation du composant | Status(proposed / pending / booked / arrived / fulfilled / cancelled / noshow / entered-in-error) |
| **SUMMARY** | TEXT 0..1 |   | Sujet ou résumé court du composant |   |
| **TRANSP** | TEXT 0..1(OPAQUE / TRANSPARENT) |   | Transparence de l’évènement par rapport à une demande de temps libre/occupé |   |
| **URL** | URI 0..1 |   | URL associé à l’objet iCalendar |   |
| **RECURRENCE-ID** | DAT-TIME 0..1 |   | Identification de la récurrence de l’évènement |   |
| **RRULE** | RECUR 0..1 |   | Règle de répétition d’un évènement récurrent |   |
| **DTEND** | DATE-TIME 0..1 (default)DATE 0..1 | VALUE = DATE-TIME / DATE | La date/temps de fin de l’évènement décrit par le composant | end |
| **DURATION** | DURATION 0..1 |   | Durée de l’évènement | minutesDuration |
| **COLOR** | TEXT 0..1 |   | Couleur associée à l’évènement |   |
| **ATTACH** | URI 0..* |   | Association d’un document au composant | supportingInformation type Binary ou documentReference |
| **ATTENDEE** | CAL-ADDRESS 0..* | - ROLE**(CHAIR / REQ-PARTICIPANT / OPT-PARTICIPANT / NON-PARTICIPANT)**- PARTSTAT**(NEEDS-ACTION / ACCEPTED / DECLINED / TENTATIVE / DELEGATED)**- … | Identification des participants | - Participant.required(required / optional / information-only)- participant.status(accepted / declined / tentative / needs-action) |
| **CATEGORIES** | TEXT 0..* |   | Définition des catégories auxquelles appartient le composant |   |
| **COMMENT** | TEXT 0..* |   | Un commentaire destiné à l’utilisateur qui va consulter le composant |   |
| **CONTACT** | TEXT 0..* |   | Informations de contact relatives au composant |   |
| **EXDATE** | DATE-TIME 0..* |   | Liste des exceptions d’un évènement récurrent |   |
| **REQUEST-STATUS** | TEXT 0..* |   | Code statut en réponse à une requête de planification |   |
| **RELATED-TO** | TEXT 0..* |   | Relation avec un autre composant |   |
| **RESOURCES** | TEXT 0..* |   | Ressource ou équipements requis pour l’évènement |   |
| **RDATE** | DATE-TIME 0..* |   | Liste des récurrences d’un évènement |   |
| **IMAGE** | URI 0..*BINARY |   | Images associées à l’évènement |   |
| **CONFERENCE** | URI 0..* |   | Informations d’accès à une conférence |   |

