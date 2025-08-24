# GRETSI'25 - Label Reproductible - Rapport de l'issue #05

![](../../img/label_or.png)

Code testé par Thomas MOREAU.

## Infos du dépôt

* ID de l'article : 1434
* Titre de l'article : Formule théorique de la probabilité d’erreur binaire d’un système MIMO distribué dans des canaux à multi-trajets partiellement bloqués
* URL du dépôt git du code : [https://gitlab.com/thibaut_29450/recherche_reproductible_gretsi25](https://gitlab.com/thibaut_29450/recherche_reproductible_gretsi25)
* Langage(s) : Python

## Configuration utilisée par le reviewer

* OS (nom et version) : CentOS 8.3.2011
* Processeur
  * Nom : AMD EPYC 7413
  * Nombre de cœurs : 20
* Carte graphique
  * Nom : NVIDIA A40
  * Mémoire dédiée : 48Gb
* Taille de la RAM : 500Gb

## A - État initial avant review

1. **Toutes les infos** de l'issue étaient exactes :
   * [x] Oui
   * [ ] Non
2. Le dépôt était **public** dès le départ :
   * [x] Oui
   * [ ] Non
3. Il y avait un **README** avec des instructions pour compiler/exécuter le code :
   * [x] Oui
   * [ ] Non
4. Les **données** nécessaires pour reproduire les résultats étaient disponibles :
   * [ ] Oui, toutes
   * [ ] Oui, en grande partie
   * [x] Non, il manquait des données essentielles
5. Les **éléments à reproduire** étaient accessibles :
   * [ ] Oui, tous
   * [ ] Oui, en grande partie
   * [x] Non, il manquait des éléments essentiels

Commentaires éventuels :

Il y avait des problèmes de compatibilité de version et certaines valeures hard codées dans les scripts.

## B - Procédure suivie pendant la review

1. Creation d'un environement conda: `conda create -n gretsi python=3.10`
2. Installation des dépendances: `pip install sionna tensorflow[and-cuda]`
3. Execution du script `python main_Peb_and_MonteCarlo_simulation_DMIMO.py`
4. Génération des figures avec les scripts proposés.

Plusieurs échanges ont été necessaires pour résoudre des problèmes d'installation des dépendances et pour mieux structurer le code pour la reproducibilité (stocker les resultats intermédiaires dans des csv). L'auteur a fait beaucoup d'effort pour rendre son code plus facile à reproduire.

## C - Bilan

### _1 - État du dépôt Git_

* Le dépôt est **public** :
  * [x] Oui
  * [ ] Non
* Il y a un **README** avec des instructions pour compiler/exécuter le code :
  * [x] Oui, et elles sont exhaustives
  * [ ] Oui, avec quelques détails mineurs qui manquent
  * [ ] Oui, avec des informations importantes qui manquent
  * [ ] Non
* Les **données** nécessaires pour reproduire les résultats sont disponibles publiquement :
  * [x] Oui, toutes
  * [ ] Oui, en grande partie
  * [ ] Pas encore, elles le seront si l'article est accepté et le label décerné
  * [ ] Non, il manque des données essentielles qui ne pourront pas être rendues publiques
* Les **éléments à reproduire** sont accessibles :
  * [x] Oui, tous
  * [ ] Oui, en grande partie
  * [ ] Non, il manque des éléments essentiels

Commentaires éventuels :

Tout est reproductible à la fin.

### _2 - Reproductibilité_

1. **Temps de compilation** constaté : NA
2. **Temps d'exécution** constaté : 25min
3. Le code **compile** :
   * [ ] sans erreur
   * [ ] avec des erreurs
   * [x] non concerné
4. Le code s'**exécute** :
   * [x] sans erreur
   * [ ] avec des erreurs
5. Si le code s'exécute **sans erreur**, cela s'est fait :
   * [ ] sans modifications du code initialement soumis
   * [ ] avec quelques changements mineurs du code initialement soumis
   * [x] avec des changements importants du code initialement soumis
6. Les **résultats attendus** sont obtenus :
   * [x] toujours
   * [ ] parfois
   * [ ] jamais
7. Les **résultats obtenus** correspondent à ceux indiqués par les auteurs dans leur papier :
   * [x] exactement
   * [ ] avec quelques différences négligeables
   * [ ] avec quelques différences notables
   * [ ] avec beaucoup de différences

Commentaires éventuels :

L'auteur principale du papier à fait de gros effort pour rendre son code plus reproductible et plus facile à installer.

## Résultat

En tant que reviewer, **j'estime** qu'à la fin de ma review, **le dépôt de l'auteur permet de reproduire les résultats annoncés** :

* [x] Oui, tous
* [ ] Oui, avec quelques réserves
* [ ] Non

Commentaires éventuels :
