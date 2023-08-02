### Flux 4a - Demande de consultation de disponibilités

Ce flux permet de demander une vue sur le temps libre ou occupé d’une ou de plusieurs ressources sur une durée de temps donnée. Un patient souhaitant prendre un rendez-vous avec un dentiste pourrait effectuer une recherche sur les disponibilités des dentistes à proximité de son lieu de travail sur une semaine donnée. Il pourra ainsi avoir une vue globale sur le temps libre ou occupé de chacun d’eux et demander un rendez-vous avec le dentiste ayant une disponibilité sur l’horaire qui lui convient le mieux. Sont envoyés dans ce flux l’intervalle de temps sur lequel les disponibilités sont demandées et les critères de recherche sur les ressources.

Ce flux est donc un flux de recherche sur les ressources de type Slot avec status=free, correspondants aux créneaux de disponibilités.

### Flux 4b - Demande de consultation de rendez-vous

Ce flux permet de rechercher des rendez-vous dans l’agenda d’une ressource donnée. Les critères de recherche peuvent se rapporter aux détails du rendez-vous et/ou aux identifiants des ressources qui y participent.