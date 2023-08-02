### Flux 1a - Création d'une ressource

Ce flux permet la création d’une ressource. Une ressource est toute personne, lieu ou objet disposant d’un agenda dans le système de gestion d’agendas partagés. Une ressource peut représenter :
* Une personne prise en charge : un patient ou une personne prise en charge au niveau sanitaire, médicoadministratif, médico-social ou social.
* Un professionnel : une personne qui participe à la prise en charge d’une autre personne que ce soit au niveau sanitaire, médico-administratif, médico-social ou social.
* Un contact : un membre de la famille ou un proche de la personne prise en charge.
* Une organisation interne : un type de service proposé par un établissement pour lequel une personne prise en charge peut prendre rendez-vous. Il s’agit par exemple d’un service de cardiologie dans un hôpital ou une unité d’échographie dans un centre d’imagerie médicale.
* Un lieu : Informations relatives à une portion déterminée de l’espace, fixe ou mobile, du point de vue de son affectation ou de ce qui s’y passe. Un box de consultation par exemple.
* Un équipement opérationnel : une ressource matérielle nécessaire à la réalisation d’une activité. Un scanner par exemple.

Une ressource représentant une personne peut être étendue à un lieu. Par exemple, un professionnel dans un de ses lieux d’exercice constitue une ressource d’agenda.

Ce flux permet donc l’envoi des détails d’une ressource au gestionnaire de ressources. Il véhicule les attributs des classes d’objet qui correspondent aux ressources métier.

### Flux 1b - Mise à jour d'une ressource

Ce flux permet la mise à jour d’une ressource. Son contenu est similaire à celui du flux 1a de création de ressource.


### Flux 1c - Suppression d'une ressource

Ce flux permet de supprimer une ressource.

A noter que dans cette spécification ne sont pas décrites les règles de contrôle devant être réalisées par le gestionnaire suite à la demande de suppression. Par exemple, la suppression de la ressource entraine la suppression des agendas qui lui sont liés, uniquement s’il est l'unique propriétaire des agendas en question.