### Les flux de recherche

Ces flux correspondent à des requêtes HTTP GET associés à leur réponse.

<div class="figure" style="width:65%;">
    <img src="flux4.png" alt="Flux1" title="Flux1">
</div>

Le flux de demande de consultation de disponibilités et sa réponse, est opéré par la requête HTTP GET sur la ressource Slot représentant les créneaux d’un agenda et sa réponse. Cette requête est envoyée au gestionnaire d’agendas.

Le flux de demande de consultation de rendez-vous et sa réponse, est opéré par la requête HTTP GET sur la ressource Appointment représentant les rendez-vous d’un agenda et sa réponse. Cette requête est envoyée au gestionnaire d’agendas.

#### Flux 4a - Demande de consultation de disponibilités

Ce flux permet de demander une vue sur le temps libre ou occupé d’une ou de plusieurs ressources sur une durée de temps donnée. Un paktient souhaitant prfunction checkGuess() {
  let userGuess = Number(guessField.value);
  if (guessCount === 1) {
    guesses.textContent = "Propositions précédentes&nbsp;: ";
  }
  guesses.textContent += userGuess + " ";

  if (userGuess === randomNumber) {
    lastResult.textContent = "Bravo, vous avez trouvé le nombre !";
    lastResult.style.backgroundColor = "green";
    lowOrHi.textContent = "";
    setGameOver();
  } else if (guessCount === 10) {
    lastResult.textContent = "!!! PERDU&nbsp;!!!";
    setGameOver();
  } else {
    lastResult.textContent = "Faux&nbsp;!";
    lastResult.style.backgroundColor = "red";
    if (userGuess < randomNumber) {
      lowOrHi.textContent = "Le nombre saisi est trop petit !";
    } else if (userGuess > randomNumber) {
      lowOrHi.textContent = "Le nombre saisi est trop grand !";
    }
  }

  guessCount++;
  guessField.value = "";
  guessField.focus();
}
Pasendre un rendez-vous avec un dentiste pourrait effectuer une recherche sur les disponibilités des dentistes à proximité de son lieu de travail sur une semaine donnée. Il pourra ainsi avoir une vue globale sur le temps libre ou occupé de chacun d’eux et demander un rendez-vous avec le dentiste ayant une disponibilité sur l’horaire qui lui convient le mieux. Sont envoyés dans ce flux l’intervalle de temps sur lequel les disponibilités sont demandées et les critères de recherche sur les ressources.

Ce flux est donc un flux de recherche sur les ressources de type Slot avec status=free, correspondants aux créneaux de disponibilités.

Le flux 4a permet de demander les créneaux de disponibilité, représentés par les ressources Slot, d’une ou de plusieurs ressources. Cela se fait à travers la requête HTTP GET avec des paramètres de recherche listés dans le tableau ci-dessous et respectant les spécifications FHIR.
Si la ressource est déjà identifiée, les critères de recherche se rapporteront aux Slot de son agenda, recherche par horaires par exemple. Si la ressource n’est pas encore identifiée, les critères peuvent être étendus pour qu’une recherche de ressources d’agenda soit effectuée en même temps. Typiquement, la recherche peut constituer une demande des créneaux libres des dentistes du 15e arrondissement de Paris pour le lendemain. Ceci se fait en utilisant le chainage des paramètres de recherche pour les éléments de type Reference.

| Paramètre de recherche | Description |
| ----- | ----- |
| identifier : token | Identifiant du créneau |
| status : token | Statut du créneau |
| start : date | Ce paramètre, peut être accompagné de modifier (lt, le, gt, ge...) pour modifier l'intervalle de recherche (cf documentation FHIR Search). |
| schedule.actor:Patient.identifier : token | Identifiant du patient (matricule INS ou autre identifiant) |
| schedule.actor:Patient.family : string | Nom du patient |
| schedule.actor:Patient.given : string | Prénom du patient |
| schedule.actor:Practitioner.identifier : token | Identifiant du professionnel |
| schedule.actor:PractitionerRole.name : string | Recherche sur le nom ou prénom d’exercice du professionnel, cf IG Annuaire |
| schedule.actor:PractitionerRole.role: token | Profession du professionnel |
| schedule.actor:PractitionerRole.specialty : token | Spécialité du professionnel |
| schedule.actor:PractitionerRole.location.address : string ou schedule.actor:PractitionerRole.location.near : special | Adresse du lieu d’exercice du professionnel |
| schedule.actor:PractitionerRole.telecom : token | Télécommunication du professionnel |
| schedule.actor:RelatedPerson.identifier : token | Identifiant du contact |
| schedule.actor:RelatedPerson.address : string | Adresse du contact |
| schedule.actor:RelatedPerson.telecom: token | Télécommunication du contact |
| schedule.actor:RelatedPerson.name : string | Nom du contact |
| schedule.actor:RelatedPerson.name : string | Prénom du contact |
| schedule.actor:Location.name : string | Nom du lieu |
| schedule.actor:Location.identifier : token | Identifiant du lieu |
| schedule.actor:Location.address : string ou schedule.actor:Location.near : special | Adresse du lieu du rendez-vous |
| schedule.actor:Device.identifier : token | Identifiant de l’équipement |
| schedule.actor:Device.type : token | Type de l’équipement |
| schedule.actor:Device.device-name : string | Nom de l’équipement |
| schedule.actor:Device.model : string | Modèle de l’équipement |
| schedule.actor:HealthcareService.identifier : token | Identifiant de l’organisation interne (service de soins) |
| schedule.actor:HealthcareService.name : string | Nom de l’organisation interne (service de soins) |
| schedule.actor:HealthcareService.service-type : token | Type de service de l’organisation interne (service de soins) |
| schedule.actor:HealthcareService.organization.identifier : token | Identifiant de l’établissement de rattachement de l’organisation interne (service de soins) |
| schedule.actor:HealthcareService.organization.name : string | Nom de l’établissement de rattachement de l’organisation interne (service de soins) |
| schedule.actor:HealthcareService.organization.address : string | Adresse de l’établissement de rattachement de l’organisation interne (service de soins) |

Exemple d’une requête :
La requête ci-dessous représente une recherche de disponibilités d’un médecin généraliste (code SM54 de la TRE R38 de l’ensemble des spécialités ordinales) à Paris entre le 02/01/2019 et le 06/01/2019. La réponse doit retourner les ressources Slot répondant à ces critères de recherche ainsi que la ressource Schedule et PractitionerRole (actor) qui y sont liés.

> GET example.com/base/Slot?_include=Slot:schedule&_include=Schedule:actor&start=ge2019-01-02&start=le2019-01-06&schedule.actor:PractitionerRole.specialty=https://mos.esante.gouv.fr/NOS/TRE_R38-SpecialiteOrdinale/FHIR/TRE-R38-SpecialiteOrdinale\|SM54&schedule.actor:PractitionerRole.address=Paris&status=free

#### Flux 5a - Réponse à la demande de consultation de disponibilités

Ce flux constitue la réponse au flux 5a de demande de consultation des disponibilités d’une ou de plusieurs ressources. Sur la durée demandée, il devra contenir les informations sur le temps libre ou occupé de chacune des ressources.

La réponse contient donc les disponibilités (Slot) des ressources répondant aux critères de recherche de la demande.

Les Slot portant le statut free représentent les disponibilités (status=free). Status=busy pour les indisponibilités correspondant à des rendez-vous pris.

Le flux 5a constitue la réponse du gestionnaire d’agenda à cette requête. Il s’agit d’une réponse HTTP 200 ok avec comme corps une ressource Bundle de type searchset contenant l’ensemble des Slot répondant aux critères de recherche envoyés et toute autre ressource référencée ayant été demandée. Un profil spécifique est créé pour ce volet et nommé GAP_BundleResultatReponseADemandeConsultationDisponibilites.
Consultez la documentation du standard sur la gestion des erreurs liées à la recherche.

#### Flux 4b - Demande de consultation de rendez-vous

Le flux 4b permet de rechercher des rendez-vous dans l’agenda d’une ressource préalablement identifiée. Cela correspond à une recherche de ressources Appointment et se fait avec une requête HTTP GET avec des paramètres de recherche listés dans le tableau ci-dessous et respectant les spécifications FHIR. Les critères de recherche peuvent se rapporter aux détails du rendez-vous et/ou aux identifiants des ressources qui y participent.

| Paramètre de recherche | Description |
| ----- | ----- |
| identifier : token | Identifiant du rendez-vous |
| date : date | Ce paramètre, peut être accompagné de modifier (lt, le, gt, ge...) pour modifier l'intervalle de recherche (cf documentation FHIR Search). |
| created : token | Date de création du rendez-vous |
| service-type : token | Type de rendez-vous |
| status : token | Statut du rendez-vous |
| description : string | Critère portant sur l’objet et le commentaire du rendez-vous |
| supporting-info : reference | Pièce jointe du rendez-vous |
| priority : token | Priorité du rendez-vous |
| actor:Patient.identifier : token ou patient.identifier : token | Matricule INS ou identifiant du patient participant au rendez-vous |
| actor:Practitioner.identifier : token ou practitioner.identifier : token | Identifiant du professionnel participant au rendez-vous |
| actor:RelatedPerson.identifier : token | Identifiant du contact participant au rendez-vous |
| actor:Location.identifier : token ou location.identifier : token | Identifiant du lieu du rendez-vous |
| actor:Device.identifier : token | Identifiant de l’équipement alloué au rendez-vous |
| actor:HealthcareService.identifier : token | Identifiant de l’organisation interne (service de soins) participant au
rendez-vous |

#### Flux 5b - Réponse à la demande de consultation de rendez-vous

Ce flux constitue la réponse au flux 4b de recherche de rendez-vous dans l’agenda d’une ressource. Sur la durée demandée, il devra contenir les informations sur les rendez-vous répondant aux critères de recherche envoyés dans la demande.

Le flux 5b constitue la réponse du gestionnaire d’agenda à cette requête. Il s’agit d’une réponse HTTP 200 ok avec comme contenu une ressource Bundle de type searchset contenant l’ensemble des Appointment répondant aux critères de recherche envoyés dans la requête et représentant les rendez-vous de la ressource demandée ainsi que toute ressource liée demandée. Un profil spécifique est créé pour ce volet et nommé GAP_BundleResultatReponseADemandeConsultationRDV.

Consultez la documentation du standard sur la gestion des erreurs liées à la recherche.
