# GRETSI'25 - Label Reproductible - Rapport de l'issue #31

Code testé par Yann GAVET.

## Infos du dépôt

* ID de l'article : 1435
* Titre de l'article : MIXSIM3D : Une Nouvelle Méthode d’Apprentissage Curriculum Contrastif 3D Appliquée à la Physique des Roches
* URL du dépôt git du code : [https://github.com/nguyenva04/mixsim3d_gretsi](https://github.com/nguyenva04/mixsim3d_gretsi)
* Langage(s) : Python

## Configuration utilisée par le reviewer

* OS (nom et version) : Rocky Linux release 8.10 (Green Obsidian)
* Processeur
  * Nom : AMD EPYC 7252 8-Core Processor
  * Nombre de cœurs : 8
* Carte graphique
  * Nom : NVidia A100
  * Mémoire dédiée : 3x80Go
* Taille de la RAM : 60Go

## A - État initial avant review

1. **Toutes les infos** de l'issue étaient exactes :
   * [ ] Oui
   * [ ] Non
2. Le dépôt était **public** dès le départ :
   * [X] Oui
   * [ ] Non
3. Il y avait un **README** avec des instructions pour compiler/exécuter le code :
   * [X] Oui
   * [ ] Non
4. Les **données** nécessaires pour reproduire les résultats étaient disponibles :
   * [ ] Oui, toutes
   * [ ] Oui, en grande partie
   * [X] Non, il manquait des données essentielles
5. Les **éléments à reproduire** étaient accessibles :
   * [ ] Oui, tous
   * [ ] Oui, en grande partie
   * [X] Non, il manquait des éléments essentiels

Commentaires éventuels :

Les données nécessaires à l'apprentissage ne sont pas publiques, il n'est possible d'exécuter le code que sur un jeu de données partiel.

## B - Procédure suivie pendant la review

Non fournie.

## C - Bilan

### _1 - État du dépôt Git_

* Le dépôt est **public** :
  * [X] Oui
  * [ ] Non
* Il y a un **README** avec des instructions pour compiler/exécuter le code :
  * [ ] Oui, et elles sont exhaustives
  * [X] Oui, avec quelques détails mineurs qui manquent
  * [ ] Oui, avec des informations importantes qui manquent
  * [ ] Non
* Les **données** nécessaires pour reproduire les résultats sont disponibles publiquement :
  * [ ] Oui, toutes
  * [ ] Oui, en grande partie
  * [ ] Pas encore, elles le seront si l'article est accepté et le label décerné
  * [X] Non, il manque des données essentielles qui ne pourront pas être rendues publiques
* Les **éléments à reproduire** sont accessibles :
  * [ ] Oui, tous
  * [ ] Oui, en grande partie
  * [X] Non, il manque des éléments essentiels

Commentaires éventuels :

On peut reproduire les inférences sur un jeu de données partiel, mais pas l'apprentissage complet. On ne peut pas retrouver les résultats présentés dans l'article, on peut simplement exécuter son code sur ses propres données.

### _2 - Reproductibilité_

1. **Temps de compilation** constaté :
2. **Temps d'exécution** constaté :
3. Le code **compile** :
   * [ ] sans erreur
   * [ ] avec des erreurs
   * [X] non concerné
4. Le code s'**exécute** :
   * [X] sans erreur
   * [ ] avec des erreurs
5. Si le code s'exécute **sans erreur**, cela s'est fait :
   * [X] sans modifications du code initialement soumis
   * [ ] avec quelques changements mineurs du code initialement soumis
   * [ ] avec des changements importants du code initialement soumis
6. Les **résultats attendus** sont obtenus :
   * [ ] toujours
   * [ ] parfois
   * [ ] jamais
7. Les **résultats obtenus** correspondent à ceux indiqués par les auteurs dans leur papier :
   * [ ] exactement
   * [ ] avec quelques différences négligeables
   * [ ] avec quelques différences notables
   * [ ] avec beaucoup de différences

Commentaires éventuels :

## Résultat

En tant que reviewer, **j'estime** qu'à la fin de ma review, **le dépôt de l'auteur permet de reproduire les résultats annoncés** :

* [ ] Oui, tous
* [ ] Oui, avec quelques réserves
* [X] Non

Commentaires éventuels :

C'est plus un partage de code qu'un dépôt qui permet de reproduire les résultats de l'article. Le code est toutefois fonctionnel.
