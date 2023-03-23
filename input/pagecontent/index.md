### Notes importantes

Cet Implementation Guide devrait dépendre de l'IG fr-core maintenu par Interop'Santé. Suite à des problèmes de validation, celui-ci ne peut pas avoir lieu. En attendant, ce document constitue uniquement une aide technique, la référence reste le document pdf disponible sur le [site de l'ans](https://esante.gouv.fr/volet-gestion-dagendas-partages).

### Introduction

Ce document présente les spécifications techniques d’interopérabilité de mise en œuvre du volet Gestion d’agendas partagés du CI-SIS. Sa production est basée sur l’étude métier de ce volet (cf. CI-SIS Etude métier – Gestion d’agendas partagés).

#### Lectorat cible 

Ce document s’adresse aux développeurs des interfaces interopérables des systèmes implémentant le volet « Gestion d’agendas partagés » ou à toute autre personne intervenant dans le processus de mise en place de ces interfaces.

Cette spécification technique s’appuie sur le standard HL7 FHIR et plus particulièrement à un sous-ensemble des ressources définies par ce standard ainsi que sur la notion d’extension et de profilage des ressources. Pour les opérations sur les ressources, l’API HTTP REST définie par le standard HL7 FHIR est mise en œuvre. L’hypothèse est faite que le lecteur est familier de ces concepts.

#### Standards utilisés 

Ces spécifications techniques se basent sur le standard HL7 FHIR (R4). Elles font référence à un certain nombre de ressources du standard ainsi qu'aux spécifications de l'API REST FHIR, basée sur le protocole HTTP. La syntaxe retenue est la syntaxe JSON.

##### Ressources utilisées 

Les ressources utilisées sont les suivantes :
* Patient (NM N).
* Practitioner (NM 3)
* PractitionerRole (NM 2)
* RelatedPerson (NM 2)
* Location (NM 3)
* HealthcareService (NM 2)
* Organization (NM 3)
* Device (NM 2)
* Schedule (NM 3)
* Slot (NM 3)
* Appointment (NM 3)


##### Profils utilisés

Des ressources FHIR ont été profilées pour le contexte français et sont utilisés dans le cadre des spécifications techniques du volet « Gestion d’agendas partagés ».
Deux sources seront utilisées dans le cadre de ce volet :
* Les profils FHIR « FrPatient », « FrPractitioner », « FrLocation », « FrHealthcareService », « FrOrganization », « FrRelatedPerson », « FrSchedule », « FrSlot » et « FrAppointment » publiés par HL7 France sont utilisés dans ce volet. Les présentes spécifications se basent sur les profils du package [hl7-france-fhir.administrative 11.2021.11](https://simplifier.net/packages/hl7-france-fhir.administrative/11.2021.1).
* Dans le cadre de l’annuaire santé, l’ANS met à disposition un service national de publication des données des professionnels et des structures au [format FHIR](https://esante.gouv.fr/sites/default/files/media_entity/documents/annuaire_interrogation-synchrone-v1_dsft_2020_06-30_v1.0.pdf); deux profils de l’annuaire santé, à savoir « PractitionerRoleProfessionalRoleRASS », « PractitionerRoleOrganizationalRoleRASS » sont utilisés pour le cas d’usage gestion d’agenda partagé. Les présentes spécifications se basent sur les profils du package [ANS.annuaire.fhir.r4 0.2.0](https://simplifier.net/packages/ans.annuaire.fhir.r4/0.2.0).

Le tableau ci-après spécifie les profils utilisés pour les ressources et types de données mentionnés dans ce document. Pour les ressources et types de données non mentionnés dans ce tableau, le profil à utiliser est celui défini par HL7 FHIR.

| **Ressource** | **Profil** | **Description** |
| ----- | ----- | ----- |
| Patient | FrPatient | Ce profil spécifie les identifiants de patient utilisés en France. Il utilise des extensions internationales (birthplace et nationalité) et ajoute des extensions propres à la France. |
| Practitioner | FrPractitioner | Ce profil contraint les types d'identifiants du professionnel en France. |
| PractitionerRole | PractitionerRolePRofessionalRoleRASS | Ce profil permet de spécifier la ou les professions du PS autorisées pour un exercice en France. |
| PractitionerRole | PractitionerRoleOrganizationalRoleRASS | Ce profil permet de spécifier le rôle (la situation d'exercice) du PS dans le contexte d'une organisation. |
| Location | FrLocation | Ce profil spécifie les rôles joués par un lieu en France. |
| HealthcareService | FrHealthcareService | Ce profil spécifie les services en France. |
| Organization | FrOrganization | Ce profil spécifie les types d'identifiants pour l'organisation en France, et ajoute des extensions françaises. |
| Schedule | FrSchedule | Ce profil redéfinit l'élément serviceType de façon à associer le service avec la durée du service. Il ajoute également une extension qui précise les périodes de disponibilités/non disponibilités de la vacation. |
| Slot | FrSlot | Ce profil spécifie la spécialité du praticien requise pour le rendez-vous. |
| Appointment | FrAppointment | Ce profil ajoute l'opérateur qui a créé/modifié/annulé le RDV. Il permet également de référencer éventuellement un RDV annulé et/ou un document lié au RDV. |

**Note éditoriale**

Dans l’ensemble de ce document, lorsqu’il est fait référence aux ressources Patient, Practitioner, Location, HealthcareService, RelatedPerson, Organization, Schedule, Slot et Appointment, il est entendu que le profil français (respectivement FrPatient , FrPractitioner , FrLocation, FrHealthcareService, FrRelatedPerson, FrOrganization, FrSchedule, FrSlot et FrAppointment) doit être utilisé.
De même, lorsqu’il est fait référence à la ressource PractitionerRole, les profils français « PractitionerRoleProfessionalRoleRASS », « PractitionerRoleOrganizationalRoleRASS » doivent être utilisés.

#### Utilisation

Les spécifications techniques présentées dans ce volet ne présagent pas des conditions de leur mise en œuvre dans le cadre d’un système d’information partagé. Il appartient à tout responsable de traitement de s’assurer que les services utilisant ces spécifications respectent les cadres et bonnes pratiques applicables à ce genre de service (ex. cadre juridique, ergonomie, accessibilité…).

Il est à noter que les contraintes de sécurité concernant les flux échangés ne sont pas traitées dans ce document. Celles-ci sont du ressort de chaque responsable de l’implémentation du mécanisme qui est dans l’obligation de se conformer au cadre juridique en la matière. L’ANS propose des référentiels dédiés à la politique de sécurité (la
[PGSSI-S](http://esante.gouv.fr/services/politique-generale-de-securite-des-systemes-d-information-de-sante-pgssi-s/en-savoir-plus-0)) et des mécanismes de sécurisation sont définis dans les volets de la [couche Transport](http://esante.gouv.fr/services/referentiels/ci-sis/espace-publication/couche-transport) du Cadre d’Interopérabilité des systèmes d’information de santé (CI-SIS).

#### Les scénarios d'implémentation
Les présentes spécifications techniques définissent des flux pouvant s’appliquer à deux scénarios d’implémentation :
* **Gestion centralisée d’agendas**

Le système gestionnaire d’agenda gère les disponibilités et les rendez-vous des ressources de manière centralisée. Les systèmes initiateurs sollicitent ponctuellement le gestionnaire d’agenda en lui envoyant des déclarations de nouvelles disponibilités des ressources, des requêtes de recherche de disponibilités de ressources ou des demandes de rendez-vous.

* **Gestion déléguée d’agendas**

Dans ce scénario le système initiateur peut gérer, par délégation du gestionnaire d’agendas, les disponibilités des ressources et la prise de rendez-vous. Des échanges fréquents de synchronisation des disponibilités et des rendez-vous entre ces acteurs doivent donc être optimisés notamment en termes de volumétrie.