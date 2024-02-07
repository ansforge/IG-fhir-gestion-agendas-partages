<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>Brief description of this Implementation Guide</b><br>
The purpose of this implementation guide is to allow the management of resources (people, places or objects), the management of the availability of these resources, the consultation and synchronization of calendars and the making of appointments.
</p>

<!-- <blockquote class="stu-note">
<p>
  <b>Attention !</b>
  <br>
 Cet Implementation Guide est actuellement en concertation.
</p>
</blockquote> -->

<div class="figure">
    <img src="ci-sis-logo.png" alt="CI-SIS" title="Logo du CI-SIS" style="width:100%;">
</div>


Ce guide d'implémentation a pour objet de permettre la gestion de ressources (personnes, lieux ou objets), la gestion des disponibilités de ces ressources, la consultation et la synchronisation d’agenda et la prise de rendez-vous.

### Scénarios d'implémentation

Les présentes spécifications techniques définissent des flux pouvant s’appliquer à deux scénarios d’implémentation :

* **Gestion centralisée d’agendas**

Le système gestionnaire d’agenda gère les disponibilités et les rendez-vous des ressources de manière centralisée. Les systèmes initiateurs sollicitent ponctuellement le gestionnaire d’agenda en lui envoyant des déclarations de nouvelles disponibilités des ressources, des requêtes de recherche de disponibilités de ressources ou des demandes de rendez-vous.

* **Gestion déléguée d’agendas**

Dans ce scénario le système initiateur peut gérer, par délégation du gestionnaire d’agendas, les disponibilités des ressources et la prise de rendez-vous. Des échanges fréquents de synchronisation des disponibilités et des rendez-vous entre ces acteurs doivent donc être optimisés notamment en termes de volumétrie.

### Profils utilisés

{% sql SELECT '[' || Title ||'](StructureDefinition-' || id || '.html)' as "Titre du profil", Description, json_extract(Json, '$.baseDefinition') as "Parent" FROM Resources WHERE Type = 'StructureDefinition' and Description like "Profil%" %}
<!-- like "%Profil%" rajouté car induit une erreur si vide -->

D'autres ressources mentionnés dans ce document n'ont pas été profilées (liste non exhaustive).

{% sql SELECT '[' || Title ||'](StructureDefinition-' || id || '.html)' as "Titre du profil", Description, json_extract(Json, '$.baseDefinition') as "Parent" FROM Resources WHERE Type = 'StructureDefinition' and Description like "Profil%" %}


Dans l’ensemble de cet IG, lorsqu’il est fait référence à ces ressources, les profils associés doivent être utilisés.

### Dépendances

{% include dependency-table.xhtml %}

### A propos

Ce document s’adresse aux développeurs des interfaces interopérables des systèmes implémentant le volet « Gestion d’agendas partagés » ou à toute autre personne intervenant dans le processus de mise en place de ces interfaces.

Cette spécification technique s’appuie sur le standard HL7 FHIR et son API REST. L’hypothèse est faite que le lecteur est familier de ces concepts.

Les spécifications techniques présentées dans ce volet ne présagent pas des conditions de leur mise en œuvre dans le cadre d’un système d’information partagé. Il appartient à tout responsable de traitement de s’assurer que les services utilisant ces spécifications respectent les cadres et bonnes pratiques applicables à ce genre de service (ex. cadre juridique, ergonomie, accessibilité…).

Il est à noter que les contraintes de sécurité concernant les flux échangés ne sont pas traitées dans ce document. Celles-ci sont du ressort de chaque responsable de l’implémentation du mécanisme qui est dans l’obligation de se conformer au cadre juridique en la matière. L’ANS propose des référentiels dédiés à la politique de sécurité (la
[PGSSI-S](http://esante.gouv.fr/services/politique-generale-de-securite-des-systemes-d-information-de-sante-pgssi-s/en-savoir-plus-0)) et des mécanismes de sécurisation sont définis dans les volets de la [couche Transport](http://esante.gouv.fr/services/referentiels/ci-sis/espace-publication/couche-transport) du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS).
