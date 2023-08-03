
Les spécifications de ce document concernent les flux structurés identifiés dans les spécifications fonctionnelles du
volet, à savoir :

Pour la gestion des ressources

* Flux 1a : CreationRessource : Pour la création de ressources d’agenda (une ressource étant toute personne, objet ou lieu disposant d’un agenda pour la prise de rendez-vous)
* Flux 1b : MiseAJourRessource : Pour la mise à jour d’une ressource.
* Flux 1c : SuppressionRessource : Pour la suppression d’une ressource.
* Flux 1bis : RetourDemandeRessource : Flux technique de réponse aux flux de gestion de ressources.

Pour la gestion d’agenda

* Flux 2a : CreationAgenda : Pour la création d’un agenda (un agenda étant l’ensemble des disponibilités et des rendez-vous sur une période donnée. Il peut être posséder par une ou plusieurs ressources).
* Flux 2b : MiseAJourAgenda : Pour la mise à jour d’un agenda.
* Flux 2c : SuppressionAgenda : Pour la suppression d’un agenda.
* Flux 2bis : RetourDemandeAgenda : Flux technique de réponse aux flux de gestion d’agenda.

Pour la gestion des disponibilités

* Flux 3a : CreationDisponibilite : Pour la création d’une plage de disponibilité sur un agenda (Une disponibilité étant une plage horaire pour laquelle la/les ressource(s) sont en capacité d'accepter des rendez-vous. Par exception, la plage de disponibilité permet de déclarer les périodes sur lesquels la ressource est indisponible).
* Flux 3b : MiseAJourDisponibilite : Pour la mise à jour d’une plage de disponibilité.
* Flux 3c : SuppressionDisponibilite : Pour la suppression d’une plage de disponibilité.
* Flux 3bis : RetourDemandeDisponibilite : Flux technique de réponse aux flux de gestion des disponibilités.

Pour les demandes de consultation des disponibilités

* Flux 4a : DemandeConsultationDisponibilite : Pour demander une vue sur les disponibilités d’une ou plusieurs ressources.
* Flux 5a : ReponseDemandeConsultationDisponibilite : Réponse au flux précédent. Peut contenir les informations sur les disponibilités d’une ou plusieurs ressources qui répondent aux critères de recherche.

Pour les demandes de consultation de rendez-vous

* Flux 4b : DemandeConsultationRDV : Pour demander une vue sur les rendez-vous (un rendezvous étant une rencontre prévue entre deux personnes à une heure et dans un lieu déterminé)
* Flux 5b : ReponseDemandeConsultationRDV : Réponse au flux précédent. Peut contenir les informations sur les rendez-vous d’un agenda qui répondent aux critères de recherche.

Pour la prise de rendez-vous

* Flux 6a – CreationRDV : Pour déclarer un rendez pris ou demander un rendez-vous.
* Flux 6b – MAJRDV : Pour mettre à jour un rendez-vous pris.
* Flux 6bis- RetourDemandeRDV : Réponse aux flux précédents. Contient les informations relatives au rendez-vous.

Une mise en correspondance est faite entre :

* Les objets métier identifiés à l’issue des spécifications fonctionnelles du volet Gestion d’agendas partagés (cf. CI-SIS Spécifications fonctionnelles – Gestion d’agendas Partagés)
* Et les ressources et éléments du standard HL7 FHIR

Pour chaque objet métier, les tableaux ci-dessous reprennent l’ensemble des éléments métier identifiés dans l’étude métier du cas d’usage. Pour chaque attribut de chaque classe métier, la ressource FHIR et plus particulièrement l’élément de cette ressource utilisé pour véhiculer l’information est identifié. Lorsqu’un profil existant est identifié, les caractéristiques de l’élément FHIR de ce profil sont rapportées.
