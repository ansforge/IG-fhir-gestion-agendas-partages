### Les objets Agenda

* Schedule : profil FrSchedule
* Slot : profil FrSlot
* Appointment : profil FrAppointment

Pour plus d'information sur les profils, consultez les dépendances et les guides d'implémentations associés.

#### Ressource « Schedule »

La ressource Schedule représente l’agenda d’un acteur ou d’un ensemble d’acteurs sur une période donnée. Pour ce volet, le profil français de la ressource, FrSchedule du package FrCore défini par HL7 France, doit être utilisé. Il s’agit d’un conteneur de créneaux horaires utilisé pour présenter les dates et les horaires durant lesquels une ressource peut être disponible pour une prise de rendez-vous.

L’extension française availabilityTime introduit la notion de disponibilités, c’est à dire des plages horaires, récurrentes ou non, durant lesquelles les rendez-vous peuvent être pris avec les acteurs de l’agenda (si un rendez-vous n’est pas déjà pris sur le créneau demandé). Il s’agit d’une description ou d’un paramétrage qui va permettre de déduire sur une période donnée la disposition d’une ressource à accepter des rendez-vous. L’utilisation de cette extension est particulièrement intéressante dans le scénario d’implémentation avec gestion déléguée d’agendas. Ce concept est différent du concept de créneaux horaires de disponibilité qui correspondent aux Slot. Une disponibilité se compose d’un ensemble de créneaux durant lesquels l’acteur peut être encore disponible pour un rendez-vous ou occupé par un rendez-vous pris. Les exceptions de disponibilités telles que des vacances ou un déplacement d’un professionnel peuvent aussi être exprimées à travers cette extension. Cette extension correspond au composant VAVAILABILITY d’iCalendar (cf mapping dans l'onglet Spécifications fonctionnelles).

L’extension serviceTypeDuration permet quant à elle d’introduire le lien entre un type de service, qui peut constituer un motif de rendez-vous, et la durée par défaut qui s’applique lors de la demande de rendez-vous. Quand le Schedule représente l’agenda d’un fournisseur de services de soins, PractitionerRole ou HealthcareService par exemple, le jeu de valeurs des types de service qui y est associé devrait provenir de jeu de valeurs des types de services de ces acteurs.

#### Ressource « Slot »

La ressource Slot représente un créneau horaire d’un agenda durant lequel une ressource peut être disponible ou non pour la prise de rendez-vous. Ce créneau peut donc représenter du temps libre ou occupé. La durée d’un slot correspond généralement à la durée nécessaire à l’exécution d’un type de service durant un rendez-vous.
Les ressources Slot sont générées par le gestionnaire d'agenda pour indiquer les créneaux disponbiles. Ces slots pourront être calculés à partir :

* De FrSchedule.extension:serviceTypeDuration
* De FrSchedule.extension:availabilityTime
* Des ressources Appointment.

Pour ce volet, le profil français de la ressource, FrSlot du package FrCore, défini par HL7 France, doit être utilisé.

L’utilisation de cette ressource est particulièrement intéressante pour le scénario d’implémentation avec gestion centralisée d’agendas, notamment, pour la recherche ponctuelle de disponibilités.

Cette ressource correspond au composant VFREEBUSY d’iCalendar (cf. Annexe 1).

La valeur prise par serviceType doit provenir du même jeu de valeur que celui de l’extension serviceTypeDuration de la ressource Schedule à laquelle le créneau est rattaché.

#### Ressource « Appointment »

La ressource Appointment représente un rendez-vous. Dans ce volet, le profil français de cette ressource,
FrAppointment du package FrCore, doit être utilisé.

L’élément status porte le statut du rendez-vous et doit être mis jour à chaque étape du cycle de vie d’un rendez-vous.

Lors d’une demande de rendez-vous suivant une consultation de disponibilités, la ressource Appointment est liée à une ou plusieurs ressources Slot, elles-mêmes liées à une ressource Schedule représentant l’agenda d’un ou de plusieurs acteurs. Dans d’autres cas d’usage, la ressource Appointment peut ne pas être liée à un créneau d’un agenda et référencer directement les ressources représentant les acteurs participant au rendez-vous au niveau de Appointment.participant.actor. L’extension appointmentOperator référence quant à elle la personne ou l’entité qui demande la création ou la mise à jour du rendez-vous.

Le jeu de valeurs de l’élément serviceType devrait être le même que celui de l’élément serviceType de la ou des ressources Slot auxquelles est rattaché le rendez-vous. Selon le type de service demandé, la durée du rendez-vous doit être cohérente, ou directement déduite, de la durée du type de service défini dans l’extension serviceTypeDuration de la ressource Schedule.

Dans le cas d’un rendez-vous lié à une prescription, l’élément supportingInformation peut être utilisé pour référencer un document représentant la prescription ou n’importe quelle autre pièce jointe (les ressources DocumentReference ou Binary).
Le demandeur du rendez-vous peut préciser le degré d’urgence du rendez-vous en utilisant l’élément appointmentType et le jeu de valeurs proposé par le standard39 ou en attribuant une priorité au rendez-vous avec l’élément priority.

### Les flux de gestion d'agenda

<div class="figure" style="width:65%;">
    <img src="flux2.png" alt="Flux1" title="Flux1">
</div>

<div class="figure" style="width:65%;">
    <img src="flux2.2.png" alt="Flux1" title="Flux1">
</div>

Les flux de création, de mise à jour et de suppression d’un agenda sont respectivement opérés par les requêtes HTTP POST, PUT et DELETE sur la ressource Schedule représentant l’agenda. Ces requêtes sont envoyées au gestionnaire d’agendas.
A noter qu’une fois la suppression effectuée par le serveur, ce dernier renvoie un code statut 200 OK ou 204 No Content.

#### Flux 2a - Création d'un agenda

Ce flux permet la création d'un agenda. Un agenda peut appartenir à une ou plusieurs ressources.
Par exemple, plusieurs professionnels peuvent avoir un agenda commun.

Ce flux correspond à une requête HTTP POST sur une ressource Schedule.

#### Flux 2b - Mise à jour d'un agenda

Ce flux permet la mise à jour d’un agenda. La structure du flux 2b est identique à celle du flux 2a, de création d'agenda. Dans ce flux, l'attribut Agenda/dateCreation n'est pas utilisé.

Ce flux correspond à une requête HTTP PUT sur une ressource Schedule.

#### Flux 2c - Suppression d'un agenda

Ce flux permet de supprimer un agenda.

Ce flux correspond à une requête HTTP DELETE sur une ressource Schedule.

