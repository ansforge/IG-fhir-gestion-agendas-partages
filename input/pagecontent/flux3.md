### Les flux de gestion des disponibilités 

Ces trois flux correspondent à une requête HTTP PUT/PATCH pour ajouter, mettre à jour ou supprimer une disponibilité à un agenda existant. Le support des requêtes HTTP PATCH ne constitue pas une exigence de ces spécifications d’interopérabilité. Le gestionnaire d’agenda peut proposer le support de ce type de requêtes pour des raisons de volumétrie des flux par exemple.

#### Flux 3a - Création de disponibilités

Ce flux permet la création des disponibilités d’une ou d’un ensemble de ressources. Une disponibilité est une plage horaire en dehors de laquelle la ressource n’accepte pas les demandes de rendez-vous. Typiquement, une disponibilité d’un médecin de ville pourrait se résumer aux horaires d’ouverture de son cabinet. Ce flux permet donc l’envoi des détails des disponibilités d’une ressource au gestionnaire d’agenda.

Cette notion de disponibilité est introduite par les extensions françaises de la ressource Schedule : FrSchedule.

#### Flux 3b - Mise à jour de disponibilités

Ce flux permet la mise à jour d’une disponibilité d’une ressource. Son contenu est similaire à celui du flux 3a de création de disponibilités.

#### Flux 3c - Suppression de disponibilités

Ce flux permet de supprimer une disponibilité d’une ressource. Il contient les identifiants de la disponibilité à supprimer.