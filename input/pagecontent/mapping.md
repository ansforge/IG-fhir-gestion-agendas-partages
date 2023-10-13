Cette page a pour objectif de mettre en correspondance les ressources FHIR avec les objets métiers du MOS et avec iCalendar.


### Mise en correspondance entre objets métiers et ressources FHIR

<table><tr><th colspan="2"><a name="_hlk86761533"></a><i>Eléments métier</i></th><th colspan="2"><i>Eléments des ressources et profils FHIR identifiés</i></th></tr>
<tr><td colspan="1"><b><i>Classe</i></b></td><td colspan="1"><b><i>Attribut</i></b></td><td colspan="1"><b><i>Ressource</i></b></td><td colspan="1"><b><i>Elément</i></b></td></tr>
<tr><td colspan="1" rowspan="4">PersonnePriseCharge</td><td colspan="1"><p>L’objet métier INS de type INS regroupe les attributs détaillés ci-dessous.</p><p>INS : [0..1] INS[^1]</p><p>- matriculeINS : [1..1] Identifiant</p><p></p><p>- nomFamille : [1..1] Texte</p><p>- prenomActeNaissance : [1..1] Texte</p><p>- premierPrenomActeNaissance : [1..1] Texte</p><p></p><p></p><p>- nomUtilise : [1..1] Texte</p><p>- prenomUtilise : [1..1] Texte</p><p></p><p></p><p>- sexe : [1..1] Code</p><p>- dateNaissance : [1..1] DateHeure</p><p>- lieuNaissance : [1..1] Texte</p></td><td colspan="1"><p>Patient</p><p>FrPatient</p></td><td colspan="1"><p>- Identifier : Identifier [0..*]</p><p>&emsp;- Slice « INS-NIR »</p><p>&emsp;- Slice « INS-NIA » </p><p>&emsp;- Slice « INS-C »</p><p></p><p>- name[1..*].family : string [1..1] (FrHumanName)</p><p>- name[1..*].text : string [0..1] (FrHumanName)</p><p>- name[1..*].given : string [1..1] (FrHumanName)</p><p></p><p>Slice officialName, Patient.name.use prenant la valeur « official »)</p><p></p><p></p><p>- name[1..*].family : string [0..1] (FrHumanName)</p><p>- name[1..*].given : string [0..*] (FrHumanName)</p><p></p><p>Slice usualName, Patient.name.use prenant la valeur « usual »</p><p></p><p></p><p>- gender : code [1..1]</p><p>- birthDate : date [1..1]</p><p>- birthPlace : Extension(Address) [0..1]</p><p>Extension (BirthPlace)</p></td></tr>
<tr><td colspan="1">idPersonnePriseCharge : [0..*] Identifiant</td><td colspan="1"><p>Patient</p><p>FrPatient</p></td><td colspan="1">identifier : Identifier [0..*]</td></tr>
<tr><td colspan="1">adresseCorrespondance : [0..*] Adresse</td><td colspan="1"><p>Patient</p><p>FrPatient</p></td><td colspan="1">address : FrAddress [0..*]</td></tr>
<tr><td colspan="1">telecommunication : [0..*] Telecommunication</td><td colspan="1"><p>Patient</p><p>FrPatient</p></td><td colspan="1">telecom : FrContactPoint [0..*]</td></tr>
<tr><td colspan="1" rowspan="2">PersonnePhysique</td><td colspan="1">nomFamille : [0..1] Texte</td><td colspan="1"><p>Patient</p><p>FrPatient</p></td><td colspan="1"><p>name[1..*].family : string [0..1]</p><p>(FrHumanName)</p><p>Slice « usualName », Patient.name.use prenant la valeur « usual »</p><p></p></td></tr>
<tr><td colspan="1">prenomUsuel : [0..1] Texte</td><td colspan="1"><p>Patient</p><p>FrPatient</p></td><td colspan="1"><p>name[1..*].given : string [0..*]</p><p>(FrHumanName)</p><p>Slice « usualName », Patient.name.use prenant la valeur « usual »</p></td></tr>
<tr><td colspan="1">Professionnel</td><td colspan="1">idPP : [1..1] Identifiant</td><td colspan="1"><p>Practitioner</p><p>FrPractitioner</p></td><td colspan="1">identifier : Identifier [0..*]</td></tr>
<tr><td colspan="1" rowspan="3">ExerciceProfessionnel</td><td colspan="1">nomExercice : [0..1] Texte</td><td colspan="1"><p>PractitionerRole</p><p>AsPractitionerRolePRofile</p></td><td colspan="1"><p>name[0..*].family : string [0..1]</p><p>(FrHumanName)</p><p>Extension française (PractitionerRoleName)</p></td></tr>
<tr><td colspan="1">prenomExercice : [0..1] Texte</td><td colspan="1"><p>PractitionerRole</p><p>AsPractitionerRolePRofile</p></td><td colspan="1"><p>name[0..*].given : string [0..*]</p><p>(FrHumanName)</p><p>Extension française (PractitionerRoleName)</p></td></tr>
<tr><td colspan="1">profession : [0..1] Code</td><td colspan="1"><p>PractitionerRole</p><p>AsPractitionerRoleProfile</p></td><td colspan="1"><p>code : CodeableConcept [0..*]</p><p>- Slice « professionG15 »</p><p>- Slice «  professionR94 »</p><p>- Slice «  professionR95 »</p><p>- Slice «  professionR291 »</p><p></p></td></tr>
<tr><td colspan="1" rowspan="2">SituationExercice</td><td colspan="1">adresseSE : [1..*] Adresse</td><td colspan="1"><p>PractitionerRole</p><p>AsPractitionerRoleProfile</p></td><td colspan="1"><p>location[0..*].address : FrAddressExtended [0..1]</p><p>(AsLocationProfile)</p></td></tr>
<tr><td colspan="1">telecommunication : [0..*] Telecommunication</td><td colspan="1"><p>PractitionerRole</p><p>AsPractitionerRoleProfile</p></td><td colspan="1">telecom : FrContactPoint [0..*]</td></tr>
<tr><td colspan="1" rowspan="9">SavoirFaire</td><td colspan="1">specialite : [0..1] Code</td><td colspan="1" valign="top"><p>PractitionerRole</p><p>AsPractitionerRoleProfile</p></td><td colspan="1"><p>specialty : CodeableConceptTimed [0..*]</p><p>Slice « savoirFaireR38 »</p></td></tr>
<tr><td colspan="1">competence : [0..1] Code</td><td colspan="1" valign="top"><p>PractitionerRole</p><p>AsPractitionerRoleProfile</p></td><td colspan="1"><p>specialty : CodeableConceptTimed [0..*]</p><p>Slice « savoirFaireR39 »</p></td></tr>
<tr><td colspan="1">competenceExclusive : [0..1] Code</td><td colspan="1" valign="top"><p>PractitionerRole</p><p>AsPractitionerRoleProfile</p></td><td colspan="1"><p>specialty : CodeableConceptTimed [0..*]</p><p>Slice « savoirFaireR40 »</p></td></tr>
<tr><td colspan="1">orientationParticuliere : [0..1] Code</td><td colspan="1" valign="top">PractitionerRole AsPractitionerRoleProfile</td><td colspan="1"><p>specialty : CodeableConceptTimed [0..*]</p><p>Slice « savoirFaireG13 »</p></td></tr>
<tr><td colspan="1">capaciteSavoirfaire : [0..1] Code</td><td colspan="1" valign="top"><p>PractitionerRole</p><p>AsPractitionerRoleProfile</p></td><td colspan="1"><p>specialty : CodeableConceptTimed [0..*]</p><p>Slice « savoirFaireR43 »</p></td></tr>
<tr><td colspan="1">qualificationPAC : [0..1] Code</td><td colspan="1" valign="top"><p>PractitionerRole</p><p>AsPractitionerRoleProfile</p></td><td colspan="1"><p>specialty : CodeableConceptTimed [0..*]</p><p>Slice « savoirFaireR44 »</p></td></tr>
<tr><td colspan="1">fonctionQualifiee: [0..1] Code</td><td colspan="1" valign="top"><p>PractitionerRole</p><p>AsPractitionerRoleProfile</p></td><td colspan="1"><p>specialty : CodeableConceptTimed [0..*]</p><p>Slice « savoirFaireR45 »</p></td></tr>
<tr><td colspan="1">descNonQualifiant : [0..1] Code</td><td colspan="1" valign="top"><p>PractitionerRole</p><p>AsPractitionerRoleProfile</p></td><td colspan="1"><p>specialty : CodeableConceptTimed [0..*]</p><p>Slice « savoirFaireR42 »</p></td></tr>
<tr><td colspan="1">droitExerciceComplementaire: [0..1] Code</td><td colspan="1" valign="top"><p>PractitionerRole</p><p>AsPractitionerRoleProfile</p></td><td colspan="1"><p>specialty : CodeableConceptTimed [0..*]</p><p>Slice « savoirFaireR97 »</p></td></tr>
<tr><td colspan="1" rowspan="3">EntiteGeographique</td><td colspan="1">idNat_Struct : [1..1] Identifiant</td><td colspan="1"><p>Organization</p><p>FrOrganization</p></td><td colspan="1">identifier : Identifier [0..*]</td></tr>
<tr><td colspan="1">denominationEG : [0..1] Texte</td><td colspan="1"><p>Organization</p><p>FrOrganization</p></td><td colspan="1">name : string [0..1]</td></tr>
<tr><td colspan="1">adresseEG : [0..*] Adresse</td><td colspan="1"><p>Organization</p><p>FrOrganization</p></td><td colspan="1">address : FrAddress [0..*]</td></tr>
<tr><td colspan="1" rowspan="4">Lieu</td><td colspan="1">nom : [0..1] Texte</td><td colspan="1"><p>Location</p><p>FrLocation</p></td><td colspan="1">name : string [0..1]</td></tr>
<tr><td colspan="1">description : [0..1] Texte</td><td colspan="1"><p>Location</p><p>FrLocation</p></td><td colspan="1">description : string [0..1]</td></tr>
<tr><td colspan="1">identifiant : [1..1] Identifiant </td><td colspan="1"><p>Location</p><p>FrLocation</p></td><td colspan="1">identifier : Identifier [1..*]</td></tr>
<tr><td colspan="1">adresse : [0..1] Adresse</td><td colspan="1"><p>Location</p><p>FrLocation</p></td><td colspan="1">address : Address [0..1]</td></tr>
<tr><td colspan="1" rowspan="4">EquipementOperationnel</td><td colspan="1">idRessourseMaterielle : [1..1] Identifiant</td><td colspan="1">Device</td><td colspan="1">identifier : Identifier [0..*]</td></tr>
<tr><td colspan="1">typeEquipement : [0..1] Code</td><td colspan="1">Device</td><td colspan="1"><p>Nomenclature à définir par le fournisseur de services en charge des équipements. Elle peut être issue de la TRE_R212-Equipement.              </p><p>type : CodeableConcept[^2] [0..1]</p></td></tr>
<tr><td colspan="1">libelle : [0..1] Texte</td><td colspan="1">Device</td><td colspan="1">deviceName[0..*].name : string [1..1]</td></tr>
<tr><td colspan="1">reference : [0..1] Code</td><td colspan="1">Device</td><td colspan="1">modelNumber : string [0..1]</td></tr>
<tr><td colspan="1" rowspan="3">Contact</td><td colspan="1">idContact : [1..1] Identifiant</td><td colspan="1"><p>RelatedPerson </p><p>FrRelatedPerson</p></td><td colspan="1">identifier : Identifier [1..1]</td></tr>
<tr><td colspan="1">adresse : [0..1] Adresse</td><td colspan="1"><p>RelatedPerson</p><p>FrRelatedPerson</p></td><td colspan="1">address : FrAddress [0..*]</td></tr>
<tr><td colspan="1">telecommunication : [0..*] Telecommunication</td><td colspan="1"><p>RelatedPerson</p><p>FrRelatedPerson</p></td><td colspan="1">telecom : FrContactPoint [0..*]</td></tr>
<tr><td colspan="1" rowspan="2">PersonnePhysique</td><td colspan="1">nomFamille : [0..*] Texte</td><td colspan="1"><p>RelatedPerson</p><p>FrRelatedPerson</p></td><td colspan="1"><p>name[0..*].family : string [0..1]</p><p>(FrHumanName)</p></td></tr>
<tr><td colspan="1">prenomUsuel : [0..*] Texte</td><td colspan="1"><p>RelatedPerson</p><p>FrRelatedPerson</p></td><td colspan="1"><p>name[0..*].given : string [0..*]</p><p>(FrHumanName)</p></td></tr>
<tr><td colspan="1" rowspan="4">OrganisationInterne</td><td colspan="1">identifiantOI : [1..1] Identifiant </td><td colspan="1"><p>HealthcareService</p><p>FrHealthcareService</p></td><td colspan="1">identifier : Identifier [0..*]</td></tr>
<tr><td colspan="1">nom : [0..1] Texte </td><td colspan="1"><p>HealthcareService</p><p>FrHealthcareService</p></td><td colspan="1">name : string [0..1]</td></tr>
<tr><td colspan="1">telecommunication : [0..*] Telecommunication</td><td colspan="1"><p>HealthcareService</p><p>FrHealthcareService</p></td><td colspan="1">telecom : FrContactPoint [0..*]</td></tr>
</table>

#### Flux 1c – Suppression d’une ressource

<table><tr><th colspan="2"><a name="_hlk76739945"></a><i>Eléments métier</i></th><th colspan="3"><i>Eléments FHIR</i></th></tr>
<tr><td><b><i>Classe</i></b></td><td><b><i>Attribut</i></b></td><td><b><i>Ressource</i></b></td><td><b><i>Paramètre de recherche</i></b></td></tr>
<tr><td rowspan="2">PersonnePriseCharge</td><td>idPersonnePriseCharge : [0..*] Identifiant</td><td>Patient</td><td>id : token</td></tr>
<tr><td>INS : INS [0..1]</td><td>Patient</td><td>id : token</td></tr>
<tr><td>Contact</td><td>idContact : [1..1] Identifiant </td><td>RelatedPerson</td><td>id : token</td></tr>
<tr><td>Professionnel</td><td>idPP : [1..1] Identifiant </td><td>Practitioner</td><td>id : token</td></tr>
<tr><td>OrganisationInterne</td><td>IdentifiantOI : [1..1] Identifiant </td><td>HealthcareService</td><td>id : token</td></tr>
<tr><td>Lieu</td><td>Identifiant : [1..1] Identifiant </td><td>Location</td><td>id : token</td></tr>
<tr><td>EquipementOperationnel</td><td>idRessourceMaterielle :[1..1] Identifiant</td><td>Device</td><td>id : token</td></tr>
</table>

#### Flux 2a – Création d’un agenda

<table><tr><th colspan="2"><i>Eléments métier</i></th><th colspan="2"><i>Eléments des ressources et profils FHIR identifiés</i></th></tr>
<tr><td colspan="1"><b><i>Classe</i></b></td><td colspan="1"><b><i>Attribut</i></b></td><td colspan="1"><b><i>Ressource</i></b></td><td colspan="1"><b><i>Element</i></b></td></tr>
<tr><td colspan="1" rowspan="11">Agenda</td><td colspan="1">idAgenda : [1..1] Identifiant</td><td colspan="1"><p>Schedule</p><p>FrSchedule</p></td><td colspan="1">identifier : Identifier [0..*]</td></tr>
<tr><td colspan="1">nom : [0..1] Texte </td><td colspan="1"><p>Schedule</p><p>FrSchedule</p></td><td colspan="1">comment : [0 ..1] string</td></tr>
<tr><td colspan="1">dateCreation : [0..1] Date</td><td colspan="1"><p>Schedule</p><p>FrSchedule</p></td><td colspan="1">Meta[0..1].lastUpdated : instant  [0..1] </td></tr>
<tr><td colspan="1">dateDebutValidite : [0..1] DateHeure</td><td colspan="1"><p>Schedule</p><p>FrSchedule</p></td><td colspan="1">planningHorizon[0..1].start : [0..1] dateTime</td></tr>
<tr><td colspan="1">dateFinValidite : [0..1] DateHeure</td><td colspan="1"><p>Schedule</p><p>FrSchedule</p></td><td colspan="1">planningHorizon[0..1].end : [0..1] dateTime</td></tr>
<tr><td colspan="1"><p>Les acteurs de l’agenda sont décrits dans une partie spécifique</p><p>PersonnePriseCharge [0..*]</sup> [^3]</p></td><td colspan="1" rowspan="6"><p>Schedule</p><p>FrSchedule</p></td><td colspan="1" rowspan="6"><p>Cette référence peut être multiple lorsqu’un agenda concerne un ensemble d’acteurs. En établissement par exemple, un spécialiste, une infirmière et un équipement peuvent disposer d’un même agenda. La prise de rendez-vous sur cet agenda concerne des services de soins spécifiques nécessitant la disponibilité de ces trois acteurs.</p><p>actor : Reference [1..*][^4] </p><p>Il est préconisé de s’appuyer sur les profils AsPractitionerRoleProfile de l’annuaire santé.</p><p>(Fr[RelatedPerson] | [Device] | [FrHealthcareService] | [FrLocation] |  [FrPatient] |  [FrPractitioner] | PractitionerRole[^5])</p></td></tr>
<tr><td colspan="1">Contact [0..*]</td></tr>
<tr><td colspan="1">Professionnel [0..*]</td></tr>
<tr><td colspan="1">OrganisationInterne [0..*]</td></tr>
<tr><td colspan="1">Lieu [0..*]</td></tr>
<tr><td colspan="1">EquipementOperationnel [0..*]</td></tr>
<tr><td colspan="1" rowspan="2">PersonnePriseCharge</td><td colspan="1" valign="top"><p>L’objet métier INS de type INS regroupe les attributs détaillés ci-dessous.</p><p>INS : [0..1] INS[^6]</p><p>- matriculeINS : [1..1] Identifiant</p><p></p><p>- nomFamille : [1..1] Texte</p><p>- prenomActeNaissance : [1..1] Texte</p><p>- premierPrenomActeNaissance : [1..1] Texte</p><p></p><p></p><p>- nomUtilise : [1..1] Texte</p><p>- prenomUtilise : [1..1] Texte</p><p></p><p></p><p>- sexe : [1..1] Code</p><p>- dateNaissance : [1..1] DateHeure</p><p>- lieuNaissance : [1..1] Texte</p></td><td colspan="1"><p>Patient</p><p>FrPatient</p></td><td colspan="1"><p>- Identifier : Identifier [0..*]</p><p>&emsp;- Slice « INS-NIR »</p><p>&emsp;- Slice « INS-NIA » </p><p>&emsp;- Slice « INS-C »</p><p></p><p>- name[1..*].family : string [1..1] (FrHumanName)</p><p>- name[1..*].text : string [0..1] (FrHumanName)</p><p>- name[1..*].given : string [1..1] (FrHumanName)</p><p></p><p>Slice officialName, Patient.name.use prenant la valeur « official »)</p><p></p><p></p><p>- name[1..*].family : string [0..1] (FrHumanName)</p><p>- name[1..*].given : string [0..*] (FrHumanName)</p><p></p><p>Slice usualName, Patient.name.use prenant la valeur « usual »</p><p></p><p></p><p>- gender : code [1..1]</p><p>- birthDate : date [1..1]</p><p>- birthPlace : Extension(Address) [0..1]</p><p>Extension (BirthPlace)</p></td></tr>
<tr><td colspan="1">idPersonnePriseCharge : [0..*] Identifiant</td><td colspan="1"><p>Patient</p><p>FrPatient</p></td><td colspan="1">identifier : Identifier [0..*]</td></tr>
<tr><td colspan="1"><a name="_hlk77696452"></a>Contact</td><td colspan="1">idContact : [1..1] Identifiant</td><td colspan="1"><p>RelatedPerson</p><p>FrRelatedPerson</p></td><td colspan="1">identifier : Identifier [1..1]</td></tr>
<tr><td colspan="1">Professionnel</td><td colspan="1">idPP : [1..1] Identifiant</td><td colspan="1"><p>Practitioner</p><p>FrPractitioner</p></td><td colspan="1">identifier : Identifier [0..*]</td></tr>
<tr><td colspan="1">OganisationInterne</td><td colspan="1">identifiantOI : [1..1] Identifiant</td><td colspan="1"><p>HealthcareService</p><p>FrHealthcareService</p></td><td colspan="1">identifier : Identifier [0..*]</td></tr>
<tr><td colspan="1">Lieu</td><td colspan="1">Identifiant : [1..1] Identifiant</td><td colspan="1"><p>Location</p><p>FrLocation</p></td><td colspan="1">identifier : Identifier [1..*]</td></tr>
<tr><td colspan="1">EquipementOperationnel</td><td colspan="1">idRessourceMaterielle : [1..1] Identifiant</td><td colspan="1">Device</td><td colspan="1">identifier : Identifier [0..*]</td></tr>
</table>

#### Flux 2c – Suppression d’un agenda

|*Eléments métier*|*Eléments FHIR*|||
| :-: | :-: | :- | :- |
|***Classe***|***Attribut***|***Ressource***|***Paramètre de recherche***|
|Agenda|idAgenda : [1..1] Identifiant|Schedule</br>FrSchedule|id : token|

#### Flux 3a – Création de disponibilités

<table><tr><th colspan="2"><i>Eléments métier</i></th><th colspan="2"><i>Eléments des ressources et profils FHIR identifiés</i></th></tr>
<tr><td colspan="1"><b><i>Classe</i></b></td><td colspan="1"><b><i>Attribut</i></b></td><td colspan="1"><b><i>Ressource</i></b></td><td colspan="1"><b><i>Elément</i></b></td></tr>
<tr><td colspan="1" rowspan="9">PlageDisponibilite</td><td colspan="1">idDisponibilite : [1..1] Identifiant</td><td colspan="1"><p>Schedule</p><p>FrSchedule</p></td><td colspan="1"><p>Plusieurs disponibilités peuvent être décrites dans un même agenda. Des indisponibilités exceptionnelles, ne représentant pas les rendez-vous pris, peuvent aussi être décrites par cette extension (availabilityTime.type=busy-unavailable).</p><p>availabilityTime[0..*].identifier : Identifier [1..*][^7]</p><p>extension française</p><p>(FrScheduleAvailabiltyTime)</p></td></tr>
<tr><td colspan="1">debutDisponibilite : [1..1] DateHeure</td><td colspan="1"><p>Schedule</p><p>FrSchedule</p></td><td colspan="1"><p>availabilityTime[0..*].start : dateTime [1..1]</p><p>extension française</p><p>(FrScheduleAvailabiltyTime)</p></td></tr>
<tr><td colspan="1">finDisponibilite : [0..1] DateHeure</td><td colspan="1"><p>Schedule</p><p>FrSchedule</p></td><td colspan="1"><p>availabilityTime[0..*].end : dateTime [1..1]</p><p>extension française</p><p>(FrScheduleAvailabiltyTime)</p></td></tr>
<tr><td colspan="1">dateDeclarationPlageDisponibilite : [0..1] DateHeure</td><td colspan="1"><p>Schedule</p><p>FrSchedule</p></td><td colspan="1"><p>availabilityTime[0..*].created : dateTime [0..1]</p><p>extension française</p><p>(FrScheduleAvailabiltyTime)</p></td></tr>
<tr><td colspan="1">frequencePlageDisponibilite : [0..1] Code</td><td colspan="1"><p>Schedule</p><p>FrSchedule</p></td><td colspan="1"><p>availabilityTime[0..*].rrule[0..1].freq : coding [1..1]</p><p>extension française</p><p>(FrScheduleAvailabiltyTime)</p></td></tr>
<tr><td colspan="1">jourSemaine : [0..*] Numerique</td><td colspan="1"><p>Schedule</p><p>FrSchedule</p></td><td colspan="1"><p>availabilityTime[0..*].rrule[0..1].byDay : string [0..*]</p><p>extension française</p><p>(FrScheduleAvailabiltyTime)</p></td></tr>
<tr><td colspan="1">heureDebut : [0..1] Heure</td><td colspan="1"><p>Schedule</p><p>FrSchedule</p></td><td colspan="1"><p>availabilityTime[0..*].rrule[0..1].byHour : positiveInt [0..*]</p><p>extension française</p><p>(FrScheduleAvailabiltyTime)</p></td></tr>
<tr><td colspan="1">heureFin :[0..1] Heure</td><td colspan="1"><p>Schedule</p><p>FrSchedule</p></td><td colspan="1"><p>availabilityTime[0..*].rrule[0..1].byHour : positiveInt [0..*]</p><p>extension française</p><p>(FrScheduleAvailabiltyTime)</p></td></tr>
<tr><td colspan="1">statut : [1..1] Code</td><td colspan="1"><p>Schedule</p><p>FrSchedule</p></td><td colspan="1"><p>availabilityTime[0..*].type: coding [1..1]</p><p>avec valeur fixée à « free »</p><p>extension française</p><p>(FrScheduleAvailabiltyTime)</p></td></tr>
<tr><td colspan="1">Agenda</td><td colspan="1">idAgenda : [1..1] Identifiant</td><td colspan="1"><p>Schedule</p><p>FrSchedule</p></td><td colspan="1">Identifier : [0..*]  Identifier </td></tr>
</table>

#### Flux 3c – Suppression de disponibilités**

|*Eléments métier*|*Eléments FHIR*|||
| :-: | :-: | :- | :- |
|***Classe***|***Attribut***|***Ressource***|***Paramètre de recherche***|
|PlageDisponibilite|idDisponibilite : [1..1] Identifiant |Schedule|availabilityTime.identifier : token|

#### Flux 4a – Demande de consultation de disponibilités

<table><tr><th colspan="2"><b><i>Critère de recherche</i></b></th><th colspan="2"><i>Paramètre FHIR</i></th></tr>
<tr><td colspan="1"><b><i>Ressource</i></b></td><td colspan="1"><b><i>Nom</i></b></td><td colspan="1"><b><i>Ressource</i></b></td><td colspan="1"><b><i>Paramètres de recherche</i></b></td></tr>
<tr><td colspan="1" rowspan="2">PersonnePriseCharge</td><td colspan="1">idPersonnePriseCharge</td><td colspan="1">Slot</td><td colspan="1">schedule.actor:Patient.identifier : token</td></tr>
<tr><td colspan="1">INS</td><td colspan="1">Slot</td><td colspan="1">schedule.actor:Patient.identifier : token</td></tr>
<tr><td colspan="1" rowspan="2">PersonnePhysique</td><td colspan="1">nomFamille</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1">schedule.actor:Patient.family : string</td></tr>
<tr><td colspan="1">prenomUsuel</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1">schedule.actor:Patient.given : string</td></tr>
<tr><td colspan="1">Professionnel</td><td colspan="1">idPP</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1">schedule.actor:Practitioner.identifier : token</td></tr>
<tr><td colspan="1" rowspan="3">ExerciceProfessionnel</td><td colspan="1">nomExercice</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1"><p><i>schedule.actor:PractitionerRole.name : string</i></p><p>ou</p><p>schedule.actor:Practitioner.family : string</p></td></tr>
<tr><td colspan="1">prenomExercice</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1"><p><i>schedule.actor:PractitionerRole.name : string</i> </p><p>ou</p><p>schedule.actor:Practitioner.family : string</p></td></tr>
<tr><td colspan="1">profession</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1">schedule.actor:PractitionerRole.role: token</td></tr>
<tr><td colspan="1" rowspan="9">SavoirFaire</td><td colspan="1">specialite</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1">schedule.actor:PractitionerRole.specialty : token</td></tr>
<tr><td colspan="1">competenceExclusive</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1" valign="top">schedule.actor:PractitionerRole.specialty : token</td></tr>
<tr><td colspan="1">orientationParticuliere</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1" valign="top">schedule.actor:PractitionerRole.specialty : token</td></tr>
<tr><td colspan="1">descNonQualifiant</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1" valign="top">schedule.actor:PractitionerRole.specialty : token</td></tr>
<tr><td colspan="1">competence</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1" valign="top">schedule.actor:PractitionerRole.specialty : token</td></tr>
<tr><td colspan="1">droitExerciceComplementaire</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1" valign="top">schedule.actor:PractitionerRole.specialty : token</td></tr>
<tr><td colspan="1">fonctionQualifiee</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1" valign="top">schedule.actor:PractitionerRole.specialty : token</td></tr>
<tr><td colspan="1">qualificationPAC</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1" valign="top">schedule.actor:PractitionerRole.specialty : token</td></tr>
<tr><td colspan="1">capaciteSavoirFaire</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1" valign="top">schedule.actor:PractitionerRole.specialty : token</td></tr>
<tr><td colspan="1" rowspan="2">SituationExercice</td><td colspan="1">adresseSE</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1"><p>schedule.actor:PractitionerRole.location.address : string</p><p>ou</p><p><a name="_ref536535476"></a> Pour une recherche sur une certaine distance d’un point géolocalisé : https://www.hl7.org/fhir/location.html#positional</p><p>schedule.actor:PractitionerRole.location.near : special[^8]</p></td></tr>
<tr><td colspan="1">telecommunication</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1">schedule.actor:PractitionerRole.telecom : token</td></tr>
<tr><td colspan="1" rowspan="3">Contact</td><td colspan="1">idContact</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1">schedule.actor:RelatedPerson.identifier : token</td></tr>
<tr><td colspan="1">adresse</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1">schedule.actor:RelatedPerson.address : string</td></tr>
<tr><td colspan="1">telecommunication</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1">schedule.actor:RelatedPerson.telecom: token</td></tr>
<tr><td colspan="1" rowspan="2">PersonnePhysique</td><td colspan="1">nomFamille</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1">schedule.actor:RelatedPerson.name : string</td></tr>
<tr><td colspan="1">prenomUsuel</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1">schedule.actor:RelatedPerson.name  : string</td></tr>
<tr><td colspan="1" rowspan="4">Lieu</td><td colspan="1">nom</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1">schedule.actor:Location.name : string</td></tr>
<tr><td colspan="1">description</td><td colspan="1"><p>` `Slot</p><p></p></td><td colspan="1">Il n’existe pas de critère de recherche équivalent dans FHIR</td></tr>
<tr><td colspan="1">identifiant</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1">schedule.actor:Location.identifier : token</td></tr>
<tr><td colspan="1">adresse</td><td colspan="1">Slot</td><td colspan="1"><p>schedule.actor:Location.address : string</p><p>ou </p><p>schedule.actor:Location.near : special13</sup></p></td></tr>
<tr><td colspan="1" rowspan="4">EquipementOperationnel</td><td colspan="1">idRessourceMaterielle</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1">schedule.actor:Device.identifier : token</td></tr>
<tr><td colspan="1">typeEquipement</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1">schedule.actor:Device.type : token</td></tr>
<tr><td colspan="1">libelle</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1">schedule.actor:Device.device-name : string</td></tr>
<tr><td colspan="1">reference</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1">schedule.actor:Device.model : string</td></tr>
<tr><td colspan="1" rowspan="4">OrganisationInterne</td><td colspan="1">identifiantOI</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1">schedule.actor:HealthcareService.identifier : token</td></tr>
<tr><td colspan="1">nom</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1">schedule.actor:HealthcareService.name : string</td></tr>
<tr><td colspan="1">telecommunication</td><td colspan="1">Slot</td><td colspan="1">Il n’existe pas de critère de recherche équivalent dans FHIR</td></tr>
<tr><td colspan="1" rowspan="3">EntiteGeographique</td><td colspan="1">idNat_Struct</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1">schedule.actor:HealthcareService.organization.identifier : token</td></tr>
<tr><td colspan="1">denominationEG</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1">schedule.actor:HealthcareService.organization.name : string</td></tr>
<tr><td colspan="1">adresseEG</td><td colspan="1"><p>Slot</p><p></p></td><td colspan="1">schedule.actor:HealthcareService.organization.address : string</td></tr>
<tr><td colspan="1" rowspan="4">Creneau </td><td colspan="1">idCreneau</td><td colspan="1">Slot</td><td colspan="1">identifier : token</td></tr>
<tr><td colspan="1">statut</td><td colspan="1">Slot</td><td colspan="1">status : token</td></tr>
<tr><td colspan="1">dateDebutRecherche</td><td colspan="1">Slot</td><td colspan="1"><p>Ce critère représente le début de l’intervalle de recherche. Le critère de recherche GAP_Slot-earliestStart basé sur start et accompagné d’un comparateur est créé :</p><p>start : date</p></td></tr>
<tr><td colspan="1">dateFinRecherche</td><td colspan="1">Slot</td><td colspan="1"><p>Ce critère représente la fin de l’intervalle de recherche. Le critère de recherche GAP_Slot-latestStart basé sur <i>start</i> et accompagné d’un comparateur est créé :</p><p>start : date</p></td></tr>
</table>

#### Flux 4b – Demande de consultation de rendez-vous

<table><tr><th colspan="3"><i>Critère de recherche</i></th><th colspan="3"><i>Paramètre FHIR</i></th></tr>
<tr><td><b><i>Ressource</i></b></td><td><b><i>Nom</i></b></td><td colspan="2"><b><i>Ressource</i></b></td><td><b><i>Paramètres de recherche</i></b></td></tr>
<tr><td rowspan="2">PersonnePriseCharge</td><td>idPersonnePriseCharge</td><td colspan="2">Appointment</td><td><p>actor:Patient.identifier : token</p><p>ou </p><p>patient.identifier : token </p></td></tr>
<tr><td>INS</td><td colspan="2">Appointment</td><td><p>actor:Patient.identifier : token</p><p>ou</p><p>patient.identifier : token</p></td></tr>
<tr><td>Professionnel</td><td>idPP</td><td colspan="2"><p>Appointment</p><p></p></td><td><p></p><p>actor:Practitioner.identifier : token </p><p>ou </p><p>practitioner.identifier : token </p><p></p></td></tr>
<tr><td>Contact</td><td>idContact</td><td colspan="2">Appointment</td><td>actor:RelatedPerson.identifier : token</td></tr>
<tr><td>Lieu</td><td>identifiant</td><td colspan="2"><p>Appointment</p><p></p></td><td><p>actor:Location.identifier : token</p><p>ou</p><p>location.identifier : token</p></td></tr>
<tr><td>EquipementOperationnel</td><td>idRessourceMaterielle</td><td colspan="2"><p>Appointment</p><p></p></td><td>actor:Device.identifier : token</td></tr>
<tr><td>OrganismeInterne</td><td>identifiantOI</td><td colspan="2"><p>Appointment</p><p></p></td><td>actor:HealthcareService.identifier : token</td></tr>
<tr><td rowspan="10">RendezVous</td><td>idRDV</td><td colspan="2">Appointment</td><td>identifier : token</td></tr>
<tr><td>dateDebut</td><td colspan="2"><p>Appointment</p><p></p></td><td><p>Ce critère représente le début de l’intervalle de recherche. Le critère de recherche GAP_Appointment-earliestStart basé sur start et accompagné d’un comparateur est créé :</p><p>date : date</p></td></tr>
<tr><td>dateFin</td><td colspan="2"><p>Appointment</p><p></p></td><td><p>Ce critère représente la fin de l’intervalle de recherche. Le critère de recherche GAP_Appointment-latestStart</i> basé sur <i>start</i> et accompagné d’un comparateur est créé :</p><p>date : date</p></td></tr>
<tr><td>datePriseRDV</td><td colspan="2"><p>Appointment</p><p></p></td><td><i>created : token</i></td></tr>
<tr><td>type </td><td colspan="2"><p>Appointment</p><p></p></td><td>service-type : token</td></tr>
<tr><td>statut </td><td colspan="2">Appointment</td><td>status : token</td></tr>
<tr><td>titreRDV</td><td colspan="2">Appointment</td><td><i>description : string</i></td></tr>
<tr><td>pieceJointe</td><td colspan="2">Appointment</td><td>supporting-info : reference</td></tr>
<tr><td>priorite</td><td colspan="2">Appointment</td><td><i>priority : token</i></td></tr>
<tr><td>commentaire</td><td colspan="2">Appointment</td><td><i>description : string</i> </td></tr>
</table>

#### Flux 5a – Réponse à la demande de consultation de disponibilités


<table><tr><th colspan="2"><i>Eléments métier</i></th><th colspan="2"><i>Eléments des ressources et profils FHIR identifiés</i></th></tr>
<tr><td colspan="1"><b><i>Classe</i></b></td><td colspan="1"><b><i>Attribut</i></b></td><td colspan="1"><b><i>Ressource</i></b></td><td colspan="1"><b><i>Elément</i></b></td></tr>
<tr><td colspan="1" rowspan="6">Creneau</td><td colspan="1">idCreneau : [1..1] Identifiant</td><td colspan="1"><p>Slot </p><p>FrSlot</p></td><td colspan="1">identifier : Identifier [0..*]</td></tr>
<tr><td colspan="1">statut : [1..1] Code </td><td colspan="1"><p>Slot </p><p>FrSlot</p></td><td colspan="1">status : code [1..1]</td></tr>
<tr><td colspan="1">dateDebut : [1..1] DateHeure</td><td colspan="1"><p>Slot </p><p>FrSlot</p></td><td colspan="1">start : instant [1..1]</td></tr>
<tr><td colspan="1">dateFin : [1..1] DateHeure</td><td colspan="1"><p>Slot </p><p>FrSlot</p></td><td colspan="1">end : instant [1..1]</td></tr>
<tr><td colspan="1">informationComplementaire : [0..1]</td><td colspan="1"><p>Slot </p><p>FrSlot</p></td><td colspan="1">comment : string [0..1]</td></tr>
<tr><td colspan="1"><p>L’agenda est décrit dans une partie spécifique.</p><p>Agenda [1..1]</sup> [^9]</p></td><td colspan="1"><p>Slot </p><p>FrSlot</p></td><td colspan="1"><p>schedule : Reference [1..1]</p><p>(FrSchedule)</p></td></tr>
<tr><td colspan="1" rowspan="7">Agenda</td><td colspan="1">idAgenda : [1..1] Identifiant </td><td colspan="1"><p>Schedule </p><p>FrSchedule</p></td><td colspan="1">identifier : Identifier [0..*]</td></tr>
<tr><td colspan="1"><p>Les acteurs de l’agenda sont décrits dans une partie spécifique.</p><p>PersonnePriseCharge [0..*]</sup> [^10]</p></td><td colspan="1" rowspan="6"><p>Schedule </p><p>FrSchedule</p></td><td colspan="1" rowspan="6"><p>Cette référence peut être multiple lorsqu’un agenda concerne un ensemble d’acteurs. En établissement par exemple, un spécialiste, une infirmière et un équipement peuvent disposer d’un même agenda. La prise de rendez-vous sur cet agenda concerne des services de soins spécifiques nécessitant la disponibilité de ces trois acteurs.</p><p>actor : Reference [1..*][^11]</p><p>Il est préconisé de s’appuyer sur les profils AsPractitionerRoleProfile de l’annuaire santé.</p><p>(Fr[RelatedPerson] | [Device] | [FrHealthcareService] | [FrLocation] |  [FrPatient] |  [FrPractitioner] | PractitionerRole[^12])</p></td></tr>
<tr><td colspan="1">Contact [0..*]</td></tr>
<tr><td colspan="1">Professionnel [0..*]</td></tr>
<tr><td colspan="1">OrganisationInterne [0..*]</td></tr>
<tr><td colspan="1">Lieu [0..*]</td></tr>
<tr><td colspan="1">EquipementProfessionnel [0..*]</td></tr>
<tr><td colspan="1" rowspan="4">PersonnePriseCharge</td><td colspan="1">idPersonnePriseCharge : [0..*] Identifiant</td><td colspan="1"><p>Patient</p><p>FrPatient</p></td><td colspan="1">identifier : Identifier [0..*]</td></tr>
<tr><td colspan="1" valign="top"><p>L’objet métier INS de type INS regroupe les attributs détaillés ci-dessous.</p><p>INS : [0..1] INS[^13]</p><p>- matriculeINS : [1..1] Identifiant</p><p></p><p>- nomFamille : [1..1] Texte</p><p>- prenomActeNaissance : [1..1] Texte</p><p>- premierPrenomActeNaissance : [1..1] Texte</p><p></p><p></p><p>- nomUtilise : [1..1] Texte</p><p>- prenomUtilise : [1..1] Texte</p><p></p><p></p><p>- sexe : [1..1] Code</p><p>- dateNaissance : [1..1] DateHeure</p><p>- lieuNaissance : [1..1] Texte</p></td><td colspan="1"><p>Patient</p><p>FrPatient</p></td><td colspan="1"><p>- Identifier : Identifier [0..*]</p><p>&emsp;- Slice « INS-NIR »</p><p>&emsp;- Slice « INS-NIA » </p><p>&emsp;- Slice « INS-C »</p><p></p><p>- name[1..*].family : string [1..1] (FrHumanName)</p><p>- name[1..*].text : string [0..1] (FrHumanName)</p><p>- name[1..*].given : string [1..1] (FrHumanName)</p><p></p><p>Slice officialName, Patient.name.use prenant la valeur « official »)</p><p></p><p></p><p>- name[1..*].family : string [0..1] (FrHumanName)</p><p>- name[1..*].given : string [0..*] (FrHumanName)</p><p></p><p>Slice usualName, Patient.name.use prenant la valeur « usual »</p><p></p><p></p><p>- gender : code [1..1]</p><p>- birthDate : date [1..1]</p><p>- birthPlace : Extension(Address) [0..1] </p><p>Extension (BirthPlace)</p></td></tr>
<tr><td colspan="1">adresseCorrespondance : [0..*] Adresse</td><td colspan="1"><p>Patient</p><p>FrPatient</p></td><td colspan="1">address : FrAddress [0..*]</td></tr>
<tr><td colspan="1">telecommunication : [0..*] Telecommunication</td><td colspan="1"><p>Patient</p><p>FrPatient</p></td><td colspan="1">telecom : FrContactPoint [0..*]</td></tr>
<tr><td colspan="1" rowspan="2">PersonnePhysique</td><td colspan="1">nomFamille : [0..1] Texte</td><td colspan="1"><p>Patient</p><p>FrPatient</p></td><td colspan="1"><p>name[1..*].family : string [0..1]</p><p>(FrHumanName)</p><p>Slice « usualName », Patient.name.use prenant la valeur « usual »</p></td></tr>
<tr><td colspan="1">prenomUsuel : [0..1] Texte</td><td colspan="1"><p>Patient</p><p>FrPatient</p></td><td colspan="1"><p>name[1..*].given : string [0..*]</p><p>(FrHumanName)</p><p>Slice « usualName », Patient.name.use prenant la valeur « usual »</p></td></tr>
<tr><td colspan="1">Professionnel</td><td colspan="1">idPP : [1..1] Identifiant </td><td colspan="1"><p>Practitioner</p><p>FrPractitioner</p></td><td colspan="1">identifier : Identifier [0..*]</td></tr>
<tr><td colspan="1" rowspan="3">ExerciceProfessionnel</td><td colspan="1">nomExercice : [0..1] Texte</td><td colspan="1"><p>PractitionerRole</p><p>AsPractitionerRoleProfile</p></td><td colspan="1"><p>name[0..*].family : string [0..1]</p><p>(FrHumanName)</p><p>Extension française (PractitionerRoleName)</p></td></tr>
<tr><td colspan="1">prenomExercice : [0..1] Texte</td><td colspan="1"><p>PractitionerRole</p><p>AsPractitionerRoleProfile</p></td><td colspan="1"><p>name[0..*].given : string [0..*]</p><p>(FrHumanName)</p><p>Extension française (PractitionerRoleName)</p></td></tr>
<tr><td colspan="1">profession : [0..1] Code</td><td colspan="1"><p>PractitionerRole</p><p>AsPractitionerRoleProfile</p></td><td colspan="1"><p>Code : CodeableConcept [0..*]</p><p>- Slice « professionG15 »</p><p>- Slice « professionR94 »</p><p>- Slice « professionR95 »</p><p>- Slice « professionR291 »</p><p></p></td></tr>
<tr><td colspan="1" rowspan="2">SituationExercice</td><td colspan="1">adresseSE : [1..*] Adresse</td><td colspan="1"><p>PractitionerRole</p><p>AsPractitionerRoleProfile</p></td><td colspan="1"><p>location[0..*].address : FrAddressExtended [0..1]</p><p>(AsLocationProfile)</p></td></tr>
<tr><td colspan="1">telecommunication : [0..*] Telecommunication</td><td colspan="1"><p>PractitionerRole</p><p>AsPractitionerRoleProfile</p></td><td colspan="1">telecom : FrContactPoint [0..*]</td></tr>
<tr><td colspan="1" rowspan="9">SavoirFaire</td><td colspan="1">specialite: [0..1] Code</td><td colspan="1" valign="top"><p>PractitionerRole</p><p>AsPractitionerRoleProfile</p></td><td colspan="1"><p>specialty : CodeableConceptTimed [0..*]</p><p>Slice «  savoirFaireR38 »</p></td></tr>
<tr><td colspan="1">competence: [0..1] Code</td><td colspan="1" valign="top"><p>PractitionerRole</p><p>AsPractitionerRoleProfile</p></td><td colspan="1"><p>specialty : CodeableConceptTimed [0..*]</p><p>Slice «  savoirFaireR39 »</p></td></tr>
<tr><td colspan="1">competenceExclusive: [0..1] Code</td><td colspan="1" valign="top"><p>PractitionerRole</p><p>AsPractitionerRoleProfile</p></td><td colspan="1"><p>specialty : CodeableConceptTimed [0..*]</p><p>Slice «  savoirFaireR40 »</p></td></tr>
<tr><td colspan="1">orientationParticuliere: [0..1] Code</td><td colspan="1" valign="top">PractitionerRole AsPractitionerRoleProfile</td><td colspan="1"><p>specialty : CodeableConceptTimed [0..*]</p><p>Slice «  savoirFaireG13 »</p></td></tr>
<tr><td colspan="1">capaciteSavoirFaire: [0..1] Code</td><td colspan="1" valign="top"><p>PractitionerRole</p><p>AsPractitionerRoleProfile</p></td><td colspan="1"><p>specialty : CodeableConceptTimed [0..*]</p><p>Slice «  savoirFaireR43 »</p></td></tr>
<tr><td colspan="1">qualificationPAC: [0..1] Code</td><td colspan="1" valign="top"><p>PractitionerRole</p><p>AsPractitionerRoleProfile</p></td><td colspan="1"><p>specialty : CodeableConceptTimed [0..*]</p><p>Slice «  savoirFaireR44 »</p></td></tr>
<tr><td colspan="1">fonctionQualifiee: [0..1] Code</td><td colspan="1" valign="top"><p>PractitionerRole</p><p>AsPractitionerRoleProfile</p></td><td colspan="1"><p>specialty : CodeableConceptTimed [0..*]</p><p>Slice «  savoirFaireR45 »</p></td></tr>
<tr><td colspan="1">descNonQualifiant: [0..1] Code</td><td colspan="1" valign="top"><p>PractitionerRole</p><p>AsPractitionerRoleProfile</p></td><td colspan="1"><p>specialty : CodeableConceptTimed [0..*]</p><p>Slice «  savoirFaireR42 »</p></td></tr>
<tr><td colspan="1">droitExerciceComplementaire: [0..1] Code</td><td colspan="1" valign="top"><p>PractitionerRole</p><p>AsPractitionerRoleProfile</p></td><td colspan="1"><p>specialty : CodeableConceptTimed [0..*]</p><p>Slice «  savoirFaireR97 »</p></td></tr>
<tr><td colspan="1" rowspan="4">OrganisationInterne</td><td colspan="1">identifiantOI : [1..1] Identifiant</td><td colspan="1"><p>HealthcareService</p><p>FrHealthcareService</p></td><td colspan="1">identifier : Identifier [0..*]</td></tr>
<tr><td colspan="1">nom : [0..1] Texte</td><td colspan="1"><p>HealthcareService</p><p>FrHealthcareService</p></td><td colspan="1">name : string [0..1]</td></tr>
<tr><td colspan="1">telecommunication : [0..*] Telecommunication</td><td colspan="1"><p>HealthcareService</p><p>FrHealthcareService</p></td><td colspan="1">telecom : FrContactPoint [0..*]</td></tr>
<tr><td colspan="1" rowspan="3">EntiteGeographique</td><td colspan="1">idNat_Struct : [1..1] Identifiant</td><td colspan="1"><p>Organization</p><p>FrOrganization</p></td><td colspan="1">identifier : Identifier [0..*]</td></tr>
<tr><td colspan="1">denominationEG : [0..1] Texte</td><td colspan="1"><p>Organization</p><p>FrOrganization</p></td><td colspan="1">name : string [0..1]</td></tr>
<tr><td colspan="1">adresseEG : [0..*] Adresse</td><td colspan="1"><p>Organization</p><p>FrOrganization</p></td><td colspan="1">address : Address [0..*]</td></tr>
<tr><td colspan="1" rowspan="4">Lieu</td><td colspan="1">identifiant : [1..1] Identifiant</td><td colspan="1"><p>Location</p><p>FrLocation</p></td><td colspan="1">identifier : Identifier [1..*]</td></tr>
<tr><td colspan="1">nom : [0..1] Texte</td><td colspan="1"><p>Location</p><p>FrLocation</p></td><td colspan="1">name : string [0..1]</td></tr>
<tr><td colspan="1">description : [0..1] Texte</td><td colspan="1"><p>Location</p><p>FrLocation</p></td><td colspan="1">description : string [0..1]</td></tr>
<tr><td colspan="1">adresse : [0..*] Adresse</td><td colspan="1"><p>Location</p><p>FrLocation</p></td><td colspan="1">address : Address [0..1]</td></tr>
<tr><td colspan="1" rowspan="4">EquipementOperationnel</td><td colspan="1">idRessourceMaterielle : [1..1] Identifiant</td><td colspan="1">Device</td><td colspan="1">identifier : Identifier [0..*]</td></tr>
<tr><td colspan="1">typeEquipement : [0..1] Code</td><td colspan="1">Device</td><td colspan="1">type : CodeableConcept [0..1]</td></tr>
<tr><td colspan="1">libelle : [0..1] Texte</td><td colspan="1">Device</td><td colspan="1">deviceName[0..*].name : string [1..1]</td></tr>
<tr><td colspan="1">reference : [0..1] Code</td><td colspan="1">Device</td><td colspan="1">modelNumber : string [0..1]</td></tr>
<tr><td colspan="1" rowspan="3">Contact</td><td colspan="1">idContact : [1..1] Identifiant</td><td colspan="1"><p>RelatedPerson</p><p>FrRelatedPerson</p></td><td colspan="1">identifier : Identifier [1..1]</td></tr>
<tr><td colspan="1">adresse : [0..1] Adresse</td><td colspan="1"><p>RelatedPerson</p><p>FrRelatedPerson</p></td><td colspan="1">address : Address [0..*]</td></tr>
<tr><td colspan="1">telecommunication : [0..*] Telecommunication</td><td colspan="1"><p>RelatedPerson</p><p>FrRelatedPerson</p></td><td colspan="1">telecom : FrContactPoint [0..*]</td></tr>
<tr><td colspan="1" rowspan="2">PersonnePhysique</td><td colspan="1">nomFamille : [0..*] Texte</td><td colspan="1"><p>RelatedPerson</p><p>FrRelatedPerson</p></td><td colspan="1"><p>name[0..*].family : string [0..1]</p><p>(FrHumanName)</p></td></tr>
<tr><td colspan="1">prenomUsuel : [0..*] Texte</td><td colspan="1"><p>RelatedPerson</p><p>FrRelatedPerson</p></td><td colspan="1"><p>name[0..*].given : string [0..*]</p><p>(FrHumanName)</p></td></tr>
</table>

#### Flux 5b – Réponse à la demande de consultation de rendez-vous

<table><tr><th colspan="2"><i>Eléments métier</i></th><th colspan="2"><i>Eléments des ressources et profils FHIR identifiés</i></th></tr>
<tr><td colspan="1"><b><i>Classe</i></b></td><td colspan="1"><b><i>Attribut</i></b></td><td colspan="1"><b><i>Ressource</i></b></td><td colspan="1"><b><i>Elément</i></b></td></tr>
<tr><td colspan="1" rowspan="16">RendezVous</td><td colspan="1">idRDV : [1..1] Identifiant</td><td colspan="1"><p>Appointment</p><p>FrAppointment</p></td><td colspan="1">identifier : Identifier [0..*]</td></tr>
<tr><td colspan="1">dateDebutRDV : [0..1] DateHeure</td><td colspan="1"><p>Appointment</p><p>FrAppointment</p></td><td colspan="1">start : instant [0..1]</td></tr>
<tr><td colspan="1">dateFinRDV : [0..1] DateHeure</td><td colspan="1"><p>Appointment</p><p>FrAppointment</p></td><td colspan="1">end : instant [0..1]</td></tr>
<tr><td colspan="1">datePriseRDV : [0..1] DateHeure</td><td colspan="1"><p>Appointment</p><p>FrAppointment</p></td><td colspan="1">created : dateTime [0..1]</td></tr>
<tr><td colspan="1">type: [0..1] Code</td><td colspan="1"><p>Appointment</p><p>FrAppointment</p></td><td colspan="1">serviceType : CodeableConcept [0..*]</td></tr>
<tr><td colspan="1">statut : [1..1] Code</td><td colspan="1"><p>Appointment</p><p>FrAppointment</p></td><td colspan="1">status : code [1..1]</td></tr>
<tr><td colspan="1">titreRDV : [0..1] Texte</td><td colspan="1"><p>Appointment</p><p>FrAppointment</p></td><td colspan="1">description : string [0..1]</td></tr>
<tr><td colspan="1">pieceJointe : [0..*] ObjetBinaire</td><td colspan="1"><p>Appointment</p><p>FrAppointment</p></td><td colspan="1"><p>supportingInformation : Reference [0..*]</p><p>(any)</p></td></tr>
<tr><td colspan="1">priorite : [0..1] Code</td><td colspan="1"><p>Appointment</p><p>FrAppointment</p></td><td colspan="1">priority : unsignedInt [0..1]</td></tr>
<tr><td colspan="1">commentaire : [0..1] Texte</td><td colspan="1"><p>Appointment</p><p>FrAppointment</p></td><td colspan="1">comment : string [0..1]</td></tr>
<tr><td colspan="1"><p>Les participants sont décrits dans une partie spécifique</p><p>PersonnePriseCharge [0..*]</sup> [^14]</p></td><td colspan="1" rowspan="6"><p>Appointment</p><p>FrAppointment</p></td><td colspan="1" rowspan="6"><p>Cette référence peut être multiple lorsqu’un agenda concerne un ensemble d’acteurs. En établissement par exemple, un spécialiste, une infirmière et un équipement peuvent disposer d’un même agenda. La prise de rendez-vous sur cet agenda concerne des services de soins spécifiques nécessitant la disponibilité de ces trois acteurs.</p><p>Il est préconisé de s’appuyer sur les profils AsPractitionerRoleProfile de l’annuaire santé.</p><p>participant[1..*].actor : Reference [0..1][^15] (Fr[RelatedPerson] | [Device] | [FrHealthcareService] | [FrLocation] |  [FrPatient] |  [FrPractitioner] | PractitionerRole[^16])</p></td></tr>
<tr><td colspan="1">Contact [0..*]</td></tr>
<tr><td colspan="1">Professionnel [0..*]</td></tr>
<tr><td colspan="1">OrganisationInterne [0..*]</td></tr>
<tr><td colspan="1">Lieu [0..*]</td></tr>
<tr><td colspan="1">EquipementOperationnel [0..*]</td></tr>
<tr><td colspan="1">Professionnel</td><td colspan="1">idPP  : [1..1] Identifiant</td><td colspan="1"><p>Practitioner</p><p>FrPractitioner</p></td><td colspan="1">identifier : Identifier [0..*]</td></tr>
<tr><td colspan="1">Lieu</td><td colspan="1">identifiant : [1..1] Identifiant</td><td colspan="1"><p>Location</p><p>FrLocation</p></td><td colspan="1">identifier : Identifier [1..*]</td></tr>
<tr><td colspan="1" rowspan="2">PersonnePriseCharge</td><td colspan="1">idPersonnePriseCharge : [0..1] Identifiant</td><td colspan="1"><p>Patient</p><p>FrPatient</p></td><td colspan="1">identifier : Identifier [0..*]</td></tr>
<tr><td colspan="1" valign="top"><p>L’objet métier INS de type INS regroupe les attributs détaillés ci-dessous.</p><p>INS : [0..1] INS[^17]</p><p>- matriculeINS : [1..1] Identifiant</p><p></p><p>- nomFamille : [1..1] Texte</p><p>- prenomActeNaissance : [1..1] Texte</p><p>- premierPrenomActeNaissance : [1..1] Texte</p><p></p><p></p><p>- nomUtilise : [1..1] Texte</p><p>- prenomUtilise : [1..1] Texte</p><p></p><p></p><p>- sexe : [1..1] Code</p><p>- dateNaissance : [1..1] DateHeure</p><p>- lieuNaissance : [1..1] Texte</p></td><td colspan="1"><p>Patient</p><p>FrPatient</p></td><td colspan="1"><p>- Identifier : Identifier [0..*]</p><p>&emsp;- Slice « INS-NIR »</p><p>&emsp;- Slice « INS-NIA » </p><p>&emsp;- Slice « INS-C »</p><p></p><p>- name[1..*].family : string [1..1] (FrHumanName)</p><p>- name[1..*].text : string [0..1] (FrHumanName)</p><p>- name[1..*].given : string [1..1] (FrHumanName)</p><p></p><p>Slice officialName, Patient.name.use prenant la valeur « official »)</p><p></p><p></p><p></p><p>- name[1..*].family : string [0..1] (FrHumanName)</p><p>- name[1..*].given : string [0..*] (FrHumanName)</p><p></p><p>Slice usualName, Patient.name.use prenant la valeur « usual »</p><p></p><p></p><p>- gender : code [1..1]</p><p>- birthDate : date [1..1]</p><p>- birthPlace : Extension(Address) [0..1]</p><p>Extension (BirthPlace)</p></td></tr>
<tr><td colspan="1">EquipementOperationnel</td><td colspan="1">idRessourceOperationnelle : [1..1] Identifiant</td><td colspan="1"><p>Device</p><p>FrDevice</p></td><td colspan="1">identifier : Identifier [0..*]</td></tr>
<tr><td colspan="1">OrganisationInterne</td><td colspan="1">identifiantOI : [1..1] Identifiant</td><td colspan="1"><p>HealthcareService</p><p>FrHealthcareService</p></td><td colspan="1">identifier : Identifier [0..*] </td></tr>
<tr><td colspan="1">Contact</td><td colspan="1">idContact : [1..1] Identifiant</td><td colspan="1"><p>RelatedPerson</p><p>FrRelatedPerson</p></td><td colspan="1">identifier : Identifier [1..1] </td></tr>
</table>

#### Flux 6a – Création de rendez-vous

<table><tr><th colspan="2"><i>Eléments métier</i></th><th colspan="2"><i>Eléments des ressources et profils FHIR identifiés</i></th></tr>
<tr><td colspan="1"><b><i>Classe</i></b></td><td colspan="1"><b><i>Attribut</i></b></td><td colspan="1"><b><i>Ressource</i></b></td><td colspan="1"><b><i>Elément</i></b></td></tr>
<tr><td colspan="1" rowspan="21">RendezVous</td><td colspan="1">idRDV : [1..1] Identifiant</td><td colspan="1"><p>Appointment</p><p>FrAppointment</p></td><td colspan="1">identifier : Identifier [0..*]</td></tr>
<tr><td colspan="1">dateDebutRDV : [1..1] DateHeure</td><td colspan="1"><p>Appointment</p><p>FrAppointment</p></td><td colspan="1">start : instant [0..1]</td></tr>
<tr><td colspan="1">dateFinRDV : [0..1] DateHeure</td><td colspan="1"><p>Appointment</p><p>FrAppointment</p></td><td colspan="1">end : instant [0..1]</td></tr>
<tr><td colspan="1">datePriseRDV : [1..1] DateHeure</td><td colspan="1"><p>Appointment</p><p>FrAppointment</p></td><td colspan="1">created : dateTime [0..1]</td></tr>
<tr><td colspan="1">type: [0..1] Code</td><td colspan="1"><p>Appointment</p><p>FrAppointment</p></td><td colspan="1">serviceType : CodeableConcept [0..*]</td></tr>
<tr><td colspan="1">statut :[1..1] Code</td><td colspan="1"><p>Appointment</p><p>FrAppointment</p></td><td colspan="1"><p>status : code [1..1]</p><p>- « proposed » dans le cadre d’une demande de rendez-vous</p><p>- « booked » dans le cadre de la déclaration d’un rendez-vous pris</p><p>- Cf. la documentation du standard pour les autres statuts</p></td></tr>
<tr><td colspan="1">pieceJointe : [0..*] ObjetBinaire</td><td colspan="1"><p>Appointment</p><p>FrAppointment</p></td><td colspan="1"><p>supportingInformation : Reference [0..*]</p><p>(any)</p></td></tr>
<tr><td colspan="1">priorite : [0..1] Code</td><td colspan="1"><p>Appointment</p><p>FrAppointment</p></td><td colspan="1">priority : unsignedInt [0..1]</td></tr>
<tr><td colspan="1">titreRDV : [0..1] Texte</td><td colspan="1"><p>Appointment</p><p>FrAppointment</p></td><td colspan="1">description : string [0..1]</td></tr>
<tr><td colspan="1">commentaire : [0..1] Texte</td><td colspan="1"><p>Appointment</p><p>FrAppointment</p></td><td colspan="1">comment : string [0..1]</td></tr>
<tr><td colspan="1"><p>Le créneau est décrit dans une partie spécifique</p><p>Creneau [0..*]</sup> [^18]</p></td><td colspan="1"><p>Appointment</p><p>FrAppointment</p></td><td colspan="1"><p>slot : Reference [0..*]</p><p>(FrSlot)</p></td></tr>
<tr><td colspan="1"><p>Les participants sont décrits dans une partie spécifique.</p><p>PersonnePriseCharge [0..*]</sup> [^19]</p></td><td colspan="1" rowspan="6"><p>Appointment</p><p>FrAppointment</p></td><td colspan="1" rowspan="6"><p>Cette référence peut être multiple lorsqu’un agenda concerne un ensemble d’acteurs. En établissement par exemple, un spécialiste, une infirmière et un équipement peuvent disposer d’un même agenda. La prise de rendez-vous sur cet agenda concerne des services de soins spécifiques nécessitant la disponibilité de ces trois acteurs.</p><p>Il est préconisé de s’appuyer sur le profil AsPractitionerRoleProfile de l’annuaire santé.</p><p>participant[1..*].actor : Reference [0..1][^20] (Fr[RelatedPerson] | [Device] | [FrHealthcareService] | [FrLocation] |  [FrPatient] |  [FrPractitioner] | PractitionerRole[^21])</p><p>- « needs-action » dans le cadre d’une demande de rendez-vous avec attente de confirmation</p><p>- « accepted » dans le cadre de la déclaration d’un rendez-vous pris et confirmé.</p><p>- Cf. la documentation du standard pour les autres statuts</p></td></tr>
<tr><td colspan="1">Contact  [0..*]</td></tr>
<tr><td colspan="1">Professionnel [0..*]</td></tr>
<tr><td colspan="1">OrganisationInterne [0..*]</td></tr>
<tr><td colspan="1">Lieu [0..*]</td></tr>
<tr><td colspan="1">EquipementOperationnel [0..*]</td></tr>
<tr><td colspan="1"><p>Les participants sont décrits dans une partie spécifique.</p><p>PersonnePriseCharge [0..*]</sup> [^22]</p></td><td colspan="1" rowspan="4"><p>Appointment</p><p>FrAppointment</p></td><td colspan="1" rowspan="4"><p>Extension (FrAppointmentOperator)</p><p>valueRefrence : reference [0..*]</p></td></tr>
<tr><td colspan="1">Contact  [0..*]</td></tr>
<tr><td colspan="1">Professionnel [0..*]</td></tr>
<tr><td colspan="1">OrganisationInterne [0..*]</td></tr>
<tr><td colspan="1">Professionnel</td><td colspan="1">idPP  : [0..1] Identifiant</td><td colspan="1"><p>Practitioner</p><p>FrPractitioner</p></td><td colspan="1">identifier : Identifier [0..*] </td></tr>
<tr><td colspan="1" rowspan="3">ExerciceProfessionnel</td><td colspan="1">nomExercice : [0..1] Texte</td><td colspan="1"><p>PractitionerRole</p><p>AsPractitionerRoleProfile</p></td><td colspan="1"><p>name[0..*].family : string [0..1]</p><p>(FrHumanName)</p><p>Extension française (PractitionerRoleName)</p></td></tr>
<tr><td colspan="1">prenomExercice : [0..1] Texte</td><td colspan="1"><p>PractitionerRole</p><p>AsPractitionerRoleProfile</p></td><td colspan="1"><p>name[0..*].given : string [0..*]</p><p>(FrHumanName)</p><p>Extension française (PractitionerRoleName)</p></td></tr>
<tr><td colspan="1">profession : [0..1] Code</td><td colspan="1"><p>PractitionerRole</p><p>AsPractitionerRoleProfile</p></td><td colspan="1"><p>Code : CodeableConcept [0..*]</p><p>- Slice « professionG15 »</p><p>- Slice « professionR94 »</p><p>- Slice « professionR95 »</p><p>- Slice « professionR291 »</p><p></p></td></tr>
<tr><td colspan="1" rowspan="2">SituationExercice</td><td colspan="1">adresseSE : [1..*] Adresse</td><td colspan="1"><p>PractitionerRole</p><p>AsPractitionerRoleProfile</p></td><td colspan="1"><p>location[0..*].address : FrAddressExtended [0..1]</p><p>(AsLocationProfile)</p></td></tr>
<tr><td colspan="1">telecommunication : [0..*] Telecommunication</td><td colspan="1"><p>PractitionerRole</p><p>AsPractitionerRoleProfile</p></td><td colspan="1">telecom : FrContactPoint [0..*]</td></tr>
<tr><td colspan="1">Lieu</td><td colspan="1">identifiant : [1..1] Identifiant</td><td colspan="1"><p>Location</p><p>FrLocation</p></td><td colspan="1">identifier : Identifier [1..*] </td></tr>
<tr><td colspan="1" rowspan="4">PersonnePriseCharge</td><td colspan="1">idPersonnePriseCharge : [0..*] Identifiant</td><td colspan="1"><p>Patient</p><p>FrPatient</p></td><td colspan="1">identifier : Identifier [0..*] </td></tr>
<tr><td colspan="1" valign="top"><p>L’objet métier INS de type INS regroupe les attributs détaillés ci-dessous.</p><p>INS : [0..1] INS[^23]</p><p>- matriculeINS : [1..1] Identifiant</p><p></p><p>- nomFamille : [1..1] Texte</p><p>- prenomActeNaissance : [1..1] Texte</p><p>- premierPrenomActeNaissance : [1..1] Texte</p><p></p><p></p><p>- nomUtilise : [1..1] Texte</p><p>- prenomUtilise : [1..1] Texte</p><p></p><p></p><p>- sexe : [1..1] Code</p><p>- dateNaissance : [1..1] DateHeure</p><p>- lieuNaissance : [1..1] Texte</p></td><td colspan="1"><p>Patient</p><p>FrPatient</p></td><td colspan="1"><p>- Identifier : Identifier [0..*]</p><p>&emsp;- Slice « INS-NIR »</p><p>&emsp;- Slice « INS-NIA » </p><p>&emsp;- Slice « INS-C »</p><p></p><p>- name[1..*].family : string [1..1] (FrHumanName)</p><p>- name[1..*].text : string [0..1] (FrHumanName)</p><p>- name[1..*].given : string [1..1] (FrHumanName)</p><p></p><p>Slice officialName, Patient.name.use prenant la valeur « official »)</p><p></p><p></p><p>- name[1..*].family : string [0..1] (FrHumanName)</p><p>- name[1..*].given : string [0..*] (FrHumanName)</p><p></p><p>Slice usualName, Patient.name.use prenant la valeur « usual »</p><p></p><p>- gender : code [1..1]</p><p>- birthDate : date [1..1]</p><p>- birthPlace : Extension(Address) [0..1]</p><p>Extension (BirthPlace)</p></td></tr>
<tr><td colspan="1">adresseCorrespondance : [0..*] Adresse</td><td colspan="1"><p>Patient</p><p>FrPatient</p></td><td colspan="1">address : FrAddress [0..*]</td></tr>
<tr><td colspan="1">telecommunication : [0..*] Telecommunication</td><td colspan="1"><p>Patient</p><p>FrPatient</p></td><td colspan="1">telecom : FrContactPoint [0..*]</td></tr>
<tr><td colspan="1" rowspan="2">PersonnePhysique</td><td colspan="1">nomFamille : [0..1] Texte</td><td colspan="1"><p>Patient</p><p>FrPatient</p></td><td colspan="1"><p>name[1..*].family : string [0..1]</p><p>(FrHumanName)</p><p>Slice « usualName », Patient.name.use prenant la valeur « usual »</p></td></tr>
<tr><td colspan="1">prenomUsuel : [0..1] Texte</td><td colspan="1"><p>Patient</p><p>FrPatient</p></td><td colspan="1"><p>name[1..*].given : string [0..*]</p><p>(FrHumanName)</p><p>Slice « usualName », Patient.name.use prenant la valeur « usual »</p></td></tr>
<tr><td colspan="1">EquipementOperationnel</td><td colspan="1">idRessourceMaterielle : [1..1] Identifiant</td><td colspan="1"><p>Device</p><p>FrDevice</p></td><td colspan="1">identifier : Identifier [0..*]</td></tr>
<tr><td colspan="1" rowspan="4">OrganisationInterne</td><td colspan="1">identifiantOI : [1..1] Identifiant</td><td colspan="1"><p>HealthcareService</p><p>FrHealthcareService</p></td><td colspan="1">identifier : Identifier [0..*] </td></tr>
<tr><td colspan="1">nom : [0..1] Texte </td><td colspan="1"><p>HealthcareService</p><p>FrHealthcareService</p></td><td colspan="1">name : string [0..1]</td></tr>
<tr><td colspan="1">telecommunication : [0..*] Telecommunication</td><td colspan="1"><p>HealthcareService</p><p>FrHealthcareService</p></td><td colspan="1">telecom : FrContactPoint [0..*]</td></tr>
<tr><td colspan="1" rowspan="3">Contact</td><td colspan="1">idContact : [1..1] Identifiant</td><td colspan="1"><p>RelatedPerson</p><p>FrRelatedPerson</p></td><td colspan="1">identifier : Identifier [1..1] </td></tr>
<tr><td colspan="1">adresse : [0..1] Adresse</td><td colspan="1"><p>RelatedPerson</p><p>FrRelatedPerson</p></td><td colspan="1">address : Address [0..*]</td></tr>
<tr><td colspan="1">telecommunication : [0..*] Telecommunication</td><td colspan="1"><p>RelatedPerson</p><p>FrRelatedPerson</p></td><td colspan="1">telecom : FrContactPoint [0..*]</td></tr>
<tr><td colspan="1" rowspan="2">PersonnePhysique</td><td colspan="1">nomFamille : [0..*] Texte</td><td colspan="1"><p>RelatedPerson</p><p>FrRelatedPerson</p></td><td colspan="1"><p>name[0..*].family : string [0..1]</p><p>(FrHumanName)</p></td></tr>
<tr><td colspan="1">prenomUsuel : [0..*] Texte</td><td colspan="1"><p>RelatedPerson</p><p>FrRelatedPerson</p></td><td colspan="1"><p>name[0..*].given : string [0..*]</p><p>(FrHumanName)</p></td></tr>
<tr><td colspan="1">Creneau</td><td colspan="1">idCrenau : Identifiant [1..1]</td><td colspan="1"><p>Slot</p><p>FrSlot</p></td><td colspan="1"><p>identifier : Identifier [0..*]</p><p></p></td></tr>
</table>

peut préciser le degré d’urgence du rendez-vous en utilisant l’élément *appointmentType* et le jeu de valeurs proposé par le standard[^24] ou en attribuant une priorité au rendez-vous avec l’élément *priority*.

### Mise en correspondance avec iCalendar
Cette annexe met en correspondance les composants et les propriétés iCalendar avec les ressources et les éléments FHIR de ce volet. Ceci est proposé dans le but de faciliter l’intégration de certains éléments dans les agendas personnels des utilisateurs.

#### VAVAILABILITY et AvailabilityTime

Le composant VAVAILABILITY définit une durée sur laquelle la ou les disponibilités de la ressource vont être décrites. Sur toute cette durée, la ressource est par défaut non disponible, et ce sont les sous-composants AVAILABILITY qui permettent de définir des plages de disponibilité, récursives ou non, sur cette période. Ci-dessous un schéma représentant les disponibilités d’une ressource sur la semaine de travail allant du 17/07/2017 au 21/07/2017. La première disponibilité, en rouge, est une disponibilité de 8h à 19h récurrente sur 4 jours. La deuxième disponibilité, en bleu, est une disponibilité simple de 8h à 13h le 21 juillet.

![](vav-ical.png)

Le sous-composant AVAILABILITY correspond à l’extension française *AvailabilityTime* de la ressource *Schedule* avec  *type = free*. Le tableau suivant met en correspondance certaines propriétés du sous-composant AVAILABILITY avec les éléments de l’extension.


|*Propriété*|*Type et cardinalités*|*Paramètre*|*Description*|*Elément FHIR*|
| :-: | :-: | :-: | :-: | :-: |
|*UID*|TEXT 1..1||Identifiant unique du sous-composant|availabilityTime.id|
|*CREATED*|DATE-TIME 0..1||Date de création du sous-composant dans le calendrier|availabilityTime.created|
|*DTSTART*|DATE-TIME 1..1  (default)</br>DATE 1..1|VALUE = DATE-TIME | DATE|La date/temps de début de la plage de disponibilité|availabilityTime.start|
|*RRULE*|RECUR 0..1||Règle de répétition de la plage de disponibilité|AvailabilityTime.rrule|
|*DTEND*|DATE-TIME 0..1  (default)</br>DATE 0..1  |VALUE = DATE-TIME | DATE|La date/temps de fin de la plage de disponibilité|availabilityTime.end|

#### VFREEBUSY et Slot

Ce composant regroupe les informations relatives à une demande concernant le temps libre/occupé d’une ressource ou une réponse à une demande concernant le temps libre/occupé d’une ressource.

Ce composant correspond à la ressource Slot. Le tableau suivant met en correspondance certaines propriétés du composant VFREEBUSY avec les éléments de la ressource.


|*Propriété*|*Type et cardinalités*|*Paramètre*|*Description*|*Elément FHIR*|
| :-: | :-: | :-: | :-: | :-: |
|*UID*|TEXT 1..1||Identifiant unique du composant|identifier|
|*DTSTART*|DATE-TIME 0..1  (default)</br>DATE 0..1 |VALUE = DATE-TIME | DATE|La date/temps de début du temps libre ou occupé décrit par le composant|start|
|*DTEND*|DATE-TIME 0..1  (default)</br>DATE 0..1 |VALUE = DATE-TIME | DATE|La date/temps de fin du temps libre ou occupé décrit par le composant|end|
|*ATTENDEE*|CAL-ADDRESS 0..\*|CN|Identification de la ressource concernée par cette demande/description de temps libre/occupé | schedule.actor|
|*COMMENT*|TEXT 0..\* || Un commentaire destiné à l’utilisateur qui va consulter le composant | comment |
|*FREEBUSY*|PERIOD 0..\*|FBTYPE = FREE | BUSY…|Sous périodes de temps libre ou occupé décrites par le composant|Status (mêmes codes)|

#### VEVENT et Appointment

Ce composant regroupe les informations relatives à un évènement (un rendez-vous par exemple).

Lorsqu’il décrit un rendez-vous, ce composant correspond à la ressource *Appointment*.

|*Propriété*|*Type et cardinalités*|*Paramètre*|*Description*|*Elément FHIR*|
| :-: | :-: | :-: | :-: | :-: |
|*DTSTAMP*|DATE-TIME 1..1||Date à laquelle le composant a été créé||
|*UID*|TEXT 1..1||Identifiant unique du composant|identifier|
|*DTSTART*|DATE-TIME 0..1 (default)</br>DATE 0..1|VALUE = DATE-TIME | DATE|La date/temps de début de l’évènement décrit par le composant|start|
|*CLASS*|TEXT 0..1</br>(PUBLIC / PRIVATE / CONFIDENTIAL)||Définition de la classe d’accès au composant||
|*CREATED*|DATE-TIME 0..1||Date de création du composant dans le calendrier|created|
|*DESCRIPTION*|TEXT 0..1||Description complète du composant|description|
|*GEO*|FLOAT 0..1||Géolocalisation du lieu de l’évènement décrit par le composant||
|*LAST-MODIFIED*|DATE-TIME 0..1||Date de révision du composant||
|*LOCATION*|TEXT 0..1||Lieu de l’évènement décrit par le composant|Participant de type Location|
|*ORGANIZER*|CAL-ADDRESS 0..1|CN</br>DIR</br>SENT-BY</br>EMAIL|Identification de l’organisateur de l’évènement|participant|
|*PRIORITY*|INTEGER 0..1</br>[0..9]||Priorité du composant|priority|
|*SEQUENCE*|INTEGER 0..1||Numéro séquentiel de la révision du composant||
|*STATUS*|TEXT 0..1</br>(TENTATIVE / CONFIRMED / CANCELLED)||Statut de confirmation du composant|Status</br>(proposed / pending / booked / arrived / fulfilled / cancelled / noshow / entered-in-error)|
|*SUMMARY*|TEXT 0..1||Sujet ou résumé court du composant||
|*TRANSP*|TEXT 0..1</br>(OPAQUE / TRANSPARENT)||Transparence de l’évènement par rapport à une demande de temps libre/occupé||
|*URL*|URI 0..1||URL associé à l’objet iCalendar||
|*RECURRENCE-ID*|DAT-TIME 0..1||Identification de la récurrence de l’évènement||
|*RRULE*|RECUR 0..1||Règle de répétition d’un évènement récurrent||
|*DTEND*|DATE-TIME 0..1 (default)</br>DATE 0..1|VALUE = DATE-TIME | DATE|La date/temps de fin de l’évènement décrit par le composant|end|
|*DURATION*|DURATION 0..1||Durée de l’évènement|minutesDuration|
|*COLOR*|TEXT 0..1||Couleur associée à l’évènement||
|*ATTACH*|URI 0..\*||Association d’un document au composant|supportingInformation type Binary ou documentReference|
|*ATTENDEE*|CAL-ADDRESS 0..\*|- ROLE</br>*(CHAIR / REQ-PARTICIPANT / OPT-PARTICIPANT / NON-PARTICIPANT)*</br>- PARTSTAT</br>*(NEEDS-ACTION / ACCEPTED / DECLINED / TENTATIVE / DELEGATED)*</br>- …|Identification des participants|- Participant.required</br>(required / optional / information-only)</br>- participant.status</br>(accepted / declined / tentative / needs-action)|
|*CATEGORIES*|TEXT 0..\*||Définition des catégories auxquelles appartient le composant||
|*COMMENT*|TEXT 0..\*||Un commentaire destiné à l’utilisateur qui va consulter le composant||
|*CONTACT*|TEXT 0..\*||Informations de contact relatives au composant||
|*EXDATE*|DATE-TIME 0..\*||Liste des exceptions d’un évènement récurrent||
|*REQUEST-STATUS*|TEXT 0..\*||Code statut en réponse à une requête de planification||
|*RELATED-TO*|TEXT 0..\*||Relation avec un autre composant||
|*RESOURCES*|TEXT 0..\*||Ressource ou équipements requis pour l’évènement||
|*RDATE*|DATE-TIME 0..\*||Liste des récurrences d’un évènement||
|*IMAGE*|URI 0..\*</br>BINARY||Images associées à l’évènement||
|*CONFERENCE*|URI 0..\*||Informations d’accès à une conférence||