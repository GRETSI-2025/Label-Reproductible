# GRETSI'25 - Label Reproductible - Rapport de l'issue #12

Code testé par Nelly PUSTELNIK.

## Infos du dépôt

* ID de l'article : 1475
* Titre de l'article : Génération de Matrices de Corrélation avec des Structures de Graphe par Optimisation Convexe
* URL du dépôt git du code : [https://gricad-gitlab.univ-grenoble-alpes.fr/polisank/generating-correlation-matrices-with-graph-structures-using-convex-optimization](https://gricad-gitlab.univ-grenoble-alpes.fr/polisank/generating-correlation-matrices-with-graph-structures-using-convex-optimization)
* Langage(s) : Python

## Configuration utilisée par le reviewer

* OS (nom et version) : macOS Big Sur Version 11.6
* Processeur
  * Nom : Apple M1
  * Nombre de cœurs : 8
* Carte graphique
  * Nom :
  * Mémoire dédiée :
* Taille de la RAM : 8 Go

## A - État initial avant review

1. **Toutes les infos** de l'issue étaient exactes :
   * [ ] Oui
   * [X] Non
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

Je n'ai pas réussi à faire tourner l'ensemble du code.

## B - Procédure suivie pendant la review

J'ai suivi les instructions des auteurs pour télécharger le répertoire, l'installation de l'environnement conda, et des dépendances.

Un Jupyter notebook était disponible ce qui simplifié l'utilisation mais j'ai rencontré des difficulté dues à des exécutions de code très longues (au bout d'une nuit de calcul sur mon laptop) toujours pas de résultat. J'ai également rencontré des soucis pour reproduire les résultats à cause de csv manquants.

## C - Bilan

### _1 - État du dépôt Git_

* Le dépôt est **public** :
  * [X] Oui
  * [ ] Non
* Il y a un **README** avec des instructions pour compiler/exécuter le code :
  * [X] Oui, et elles sont exhaustives
  * [ ] Oui, avec quelques détails mineurs qui manquent
  * [ ] Oui, avec des informations importantes qui manquent
  * [ ] Non
* Les **données** nécessaires pour reproduire les résultats sont disponibles publiquement :
  * [ ] Oui, toutes
  * [ ] Oui, en grande partie
  * [X] Pas encore, elles le seront si l'article est accepté et le label décerné
  * [ ] Non, il manque des données essentielles qui ne pourront pas être rendues publiques
* Les **éléments à reproduire** sont accessibles :
  * [ ] Oui, tous
  * [ ] Oui, en grande partie
  * [X] Non, il manque des éléments essentiels

Commentaires éventuels :

### _2 - Reproductibilité_

1. **Temps de compilation** constaté :
2. **Temps d'exécution** constaté :
3. Le code **compile** :
   * [ ] sans erreur
   * [ ] avec des erreurs
   * [X] non concerné
4. Le code s'**exécute** :
   * [ ] sans erreur
   * [X] avec des erreurs
5. Si le code s'exécute **sans erreur**, cela s'est fait :
   * [ ] sans modifications du code initialement soumis
   * [ ] avec quelques changements mineurs du code initialement soumis
   * [ ] avec des changements importants du code initialement soumis
6. Les **résultats attendus** sont obtenus :
   * [ ] toujours
   * [ ] parfois
   * [X] jamais
7. Les **résultats obtenus** correspondent à ceux indiqués par les auteurs dans leur papier :
   * [ ] exactement
   * [ ] avec quelques différences négligeables
   * [ ] avec quelques différences notables
   * [ ] avec beaucoup de différences

Commentaires éventuels :

Impossible car temps de calculs trop longs sur laptop + fichiers csv manquants.

## Résultat

En tant que reviewer, **j'estime** qu'à la fin de ma review, **le dépôt de l'auteur permet de reproduire les résultats annoncés** :

* [ ] Oui, tous
* [ ] Oui, avec quelques réserves
* [ ] Non

Commentaires éventuels :

surement mais problèmes de temps de calcul + chargement de fichiers csv.
