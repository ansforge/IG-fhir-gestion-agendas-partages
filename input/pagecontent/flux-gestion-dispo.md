### Les flux de gestion des disponibilités 

<div class="figure" style="width:65%;">
    <img src="flux3.png" alt="Flux3" title="Flux3">
</div>

Ces trois flux correspondent à une requête HTTP PUT/PATCH pour ajouter, mettre à jour ou supprimer une disponibilité à un agenda existant. Le support des requêtes HTTP PATCH ne constitue pas une exigence de ces spécifications d’interopérabilité. Le gestionnaire d’agenda peut proposer le support de ce type de requêtes pour des raisons de volumétrie des flux par exemple.

Les flux de création, de mise à jour et de suppression d’une disponibilité sont opérés par les requêtes HTTP PUT ou PATCH sur la ressource Schedule représentant l’agenda pour créer, modifier ou supprimer une occurrence de l’extension availabilityTime. Ces requêtes sont envoyées au gestionnaire d’agendas.

#### Flux 3a - Création de disponibilités

Ce flux permet la création des disponibilités d’une ou d’un ensemble de ressources. Une disponibilité est une plage horaire en dehors de laquelle la ressource n’accepte pas les demandes de rendez-vous. Typiquement, une disponibilité d’un médecin de ville pourrait se résumer aux horaires d’ouverture de son cabinet. Ce flux permet donc l’envoi des détails des disponibilités d’une ressource au gestionnaire d’agenda.

Cette notion de disponibilité est introduite par les extensions françaises de la ressource Schedule : FrSchedule.

Le flux 3a permet de déclarer les disponibilités d’une ressource. L’ajout des disponibilités à un agenda existant peut se faire selon deux méthodes :

* Méthode HTTP PUT avec la nouvelle version de la ressource Schedule, contenant les nouvelles disponibilités (extension availabilityTime), dans le corps.
* Méthode HTTP PATCH, en utilisant l’opération add, pour ajouter une nouvelle disponibilité (extension availabilityTime).
Une fois la mise à jour correctement effectuée par le gestionnaire d’agendas, ce dernier renvoie un code statut 200 OK.

#### Flux 3b - Mise à jour de disponibilités

Ce flux permet la mise à jour d’une disponibilité d’une ressource. Son contenu est similaire à celui du flux 3a de création de disponibilités.

Le flux 3b permet de mettre à jour les disponibilités d’une ressource. Cela peut se faire en utilisant :

* La méthode HTTP PUT et en envoyant dans le corps de la requête la ressource Schedule contenant les disponibilités mises à jour.
* La méthode HTTP PATCH, avec l’opération replace, pour remplacer une disponibilité (extension availabilityTime) par sa nouvelle version.
Une fois la mise à jour correctement effectuée par le gestionnaire d’agendas, ce dernier renvoie un code statut 200 OK.

#### Flux 3c - Suppression de disponibilités

Ce flux permet de supprimer une disponibilité d’une ressource. Il contient les identifiants de la disponibilité à supprimer.

Le flux 3c permet de supprimer les disponibilités. Cela peut se faire de deux façons :

* Méthode HTTP PUT pour envoyer une nouvelle version de la ressource Schedule où les disponibilités en question ont été supprimées.
* Méthode HTTP PATCH, en utilisant l’opération remove, pour supprimer les disponibilités.
Une fois la mise à jour correctement effectuée par le gestionnaire d’agendas, ce dernier renvoie un code statut 200 OK.
