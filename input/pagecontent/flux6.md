### Gestion de rendez-vous

Les flux de création et de mise à jour d’un rendez-vous sont respectivement opérés par les requêtes HTTP POST et PUT sur la ressource Appointment représentant le rendez-vous. Ces requêtes sont envoyées au gestionnaire d’agendas.

<div class="figure" style="width:65%;">
    <img src="flux6.png" alt="Flux6" title="Flux6">
</div>

#### Flux 6a - Création de rendez-vous

Le flux de création de rendez-vous est initié par un déclarant de rendez-vous et peut constituer une demande de rendez-vous (attente de confirmation) ou une simple déclaration d'un rendez-vous pris. L'attribut Appointment.status permet de définir quel est le cas concerné.

Il existe deux cas d'usage pour la demande de rendez-vous :

* La demande est effectuée suite à une consultation des disponibilités d'une ou de plusieurs ressources. Le flux portera alors les informations sur le rendez-vous et l'identifiant du créneau.
* La demande est poussée sans consultation de l'agenda. Le flux portera alors les informations du rendez-vous et les identifiants des ressources concernées.

Ce flux correspond à une requête HTTP POST sur une ressource Appointment.

Le flux 6a permet la création de rendez-vous. Cela se fait via l’interaction create de l’API FHIR (http POST) sur la ressource Appointment.

#### Flux 6b - Mise à jour de rendez-vous

Le flux de mise à jour de rendez-vous est initié par un déclarant de rendez-vous et constitue une simple mise à jour d'un rendez-vous préalablement déclaré (changement de statut, ajout d'un participant...). La structure du flux 6b de mise à jour de rendez-vous est similaire à celle du flux 6a de création de rendez-vous.

Ce flux correspond à une requête HTTP PUT (Conditional update) sur une ressource Appointment.

Le flux 6b permet la mise à jour d’un rendez-vous préalablement déclaré (changement de statut, ajout d'un participant...). Cela se fait via l’interaction conditional update de l’API FHIR (http PUT) sur la ressource Appointment en se basant sur l’identifiant métier unique « appointment.identifier ». A la réception de la requête, une recherche au niveau du gestionnaire d’agendas est effectuée sur la base de cet identifiant. Si un rendez-vous correspond à l’identifiant fournie par le déclarant la ressource est mise à jour et un code statut 200 ok est retourné.

Consultez la documentation du standard pour plus d’information sur l’implémentation du conditional update.
