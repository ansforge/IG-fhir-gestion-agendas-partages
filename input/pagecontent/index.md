<blockquote class="stu-note">
<p>
  <b>Attention !</b>
  <br>
 Cet Implementation Guide est actuellement en concertation.
</p>
</blockquote>

<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>Brief description of this Implementation Guide</b><br>
The purpose of this implementation guide is to allow the management of resources (people, places or objects), the management of the availability of these resources, the consultation and synchronization of calendars and the making of appointments.
</p>

<div class="figure" style="width:65%;">
    <img src="ci-sis-logo.png" alt="CI-SIS" title="Logo du CI-SIS">
</div>

Ce guide d'implémentation a pour objet de permettre la gestion de ressources (personnes, lieux ou objets), la gestion des disponibilités de ces ressources, la consultation et la synchronisation d’agenda et la prise de rendez-vous.

### Scénarios d'implémentation

Les présentes spécifications techniques définissent des flux pouvant s’appliquer à deux scénarios d’implémentation :

* **Gestion centralisée d’agendas**

Le système gestionnaire d’agenda gère les disponibilités et les rendez-vous des ressources de manière centralisée. Les systèmes initiateurs sollicitent ponctuellement le gestionnaire d’agenda en lui envoyant des déclarations de nouvelles disponibilités des ressources, des requêtes de recherche de disponibilités de ressources ou des demandes de rendez-vous.

* **Gestion déléguée d’agendas**

Dans ce scénario le système initiateur peut gérer, par délégation du gestionnaire d’agendas, les disponibilités des ressources et la prise de rendez-vous. Des échanges fréquents de synchronisation des disponibilités et des rendez-vous entre ces acteurs doivent donc être optimisés notamment en termes de volumétrie.

### Profils utilisés

Le tableau ci-après spécifie les profils utilisés pour les ressources mentionnés dans ce document. Pour les ressources non mentionnés dans ce tableau, le profil à utiliser est celui défini par HL7 FHIR.

| **Ressource** | **Profil** | **Package** | **Description** |
| ----- | ----- | ----- |
| Patient | FrPatient | hl7.fhir.fr.core | Ce profil spécifie les identifiants de patient utilisés en France. Il utilise des extensions internationales (birthplace et nationalité) et ajoute des extensions propres à la France. |
| Practitioner | FrPractitioner | hl7.fhir.fr.core | Ce profil contraint les types d'identifiants du professionnel en France. |
| PractitionerRole | AsPractitionerRoleProfile | ans.fhir.fr.annuaire | Ce profil permet de spécifier l’exercice professionel et la situation d’exercice. |
| Location | FrLocation | hl7.fhir.fr.core | Ce profil spécifie les rôles joués par un lieu en France. |
| HealthcareService | FrHealthcareService | hl7.fhir.fr.core | Ce profil spécifie les services en France. |
| Organization | FrOrganization | hl7.fhir.fr.core | Ce profil spécifie les types d'identifiants pour l'organisation en France, et ajoute des extensions françaises. |
| RelatedPerson | FrRelatedPerson | hl7.fhir.fr.core | Ce profil spécifie les personnes reliées à un patient. |
| Schedule | FrSchedule | hl7.fhir.fr.core | Ce profil redéfinit l'élément serviceType de façon à associer le service avec la durée du service. Il ajoute également une extension qui précise les périodes de disponibilités/non disponibilités de la vacation. |
| Slot | FrSlot | hl7.fhir.fr.core | Ce profil spécifie la spécialité du praticien requise pour le rendez-vous. |
| Appointment | FrAppointment | hl7.fhir.fr.core | Ce profil ajoute l'opérateur qui a créé/modifié/annulé le RDV. Il permet également de référencer éventuellement un RDV annulé et/ou un document lié au RDV. |

Dans l’ensemble de cet IG, lorsqu’il est fait référence à ces ressources, les profils associés doivent être utilisés.

### Dépendances

{% include dependency-table.xhtml %}

### A propos

Ce document s’adresse aux développeurs des interfaces interopérables des systèmes implémentant le volet « Gestion d’agendas partagés » ou à toute autre personne intervenant dans le processus de mise en place de ces interfaces.

Cette spécification technique s’appuie sur le standard HL7 FHIR et son API REST. L’hypothèse est faite que le lecteur est familier de ces concepts.

Les spécifications techniques présentées dans ce volet ne présagent pas des conditions de leur mise en œuvre dans le cadre d’un système d’information partagé. Il appartient à tout responsable de traitement de s’assurer que les services utilisant ces spécifications respectent les cadres et bonnes pratiques applicables à ce genre de service (ex. cadre juridique, ergonomie, accessibilité…).

Il est à noter que les contraintes de sécurité concernant les flux échangés ne sont pas traitées dans ce document. Celles-ci sont du ressort de chaque responsable de l’implémentation du mécanisme qui est dans l’obligation de se conformer au cadre juridique en la matière. L’ANS propose des référentiels dédiés à la politique de sécurité (la
[PGSSI-S](http://esante.gouv.fr/services/politique-generale-de-securite-des-systemes-d-information-de-sante-pgssi-s/en-savoir-plus-0)) et des mécanismes de sécurisation sont définis dans les volets de la [couche Transport](http://esante.gouv.fr/services/referentiels/ci-sis/espace-publication/couche-transport) du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS).
