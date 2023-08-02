### Flux 6a - Création de rendez-vous

Le flux de création de rendez-vous est initié par un déclarant de rendez-vous et peut constituer une demande de rendez-vous (attente de confirmation) ou une simple déclaration d'un rendez-vous pris.

Il existe deux cas d'usage pour la demande de rendez-vous :

* La demande est effectuée suite à une consultation des disponibilités d'une ou de plusieurs ressources. Le flux portera alors les informations sur le rendez-vous et l'identifiant du créneau.
* La demande est poussée sans consultation de l'agenda. Le flux portera alors les informations du rendez-vous et les identifiants des ressources concernées.

Ce flux correspond à une requête HTTP POST sur une ressource Appointment.

### Flux 6b - Mise à jour de rendez-vous

Le flux de mise à jour de rendez-vous est initié par un déclarant de rendez-vous et constitue une simple mise à jour d'un rendez-vous préalablement déclaré (changement de statut, ajout d'un participant...). La structure du flux 6b de mise à jour de rendez-vous est similaire à celle du flux 6a de création de rendez-vous.

Ce flux correspond à une requête HTTP PUT (Conditional update) sur une ressource Appointment.
