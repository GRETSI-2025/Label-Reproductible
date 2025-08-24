# GRETSI'25 - Label Reproductible - Rapport de l'issue #06

Code testé par Nicolas NADISIC.

## Infos du dépôt

* ID de l'article : 1428
* Titre de l'article : Simulation of refraction in heterogeneous media on a regular grid
* URL du dépôt git du code : [https://github.com/piett3869/ray_tracing_refraction_public](https://github.com/piett3869/ray_tracing_refraction_public)
* Langage(s) : Python

## Configuration utilisée par le reviewer

* OS (nom et version) : Ubuntu 22.04
* Processeur
  * Nom : AMD Ryzen Threadripper 1920X 12-Core Processor
  * Nombre de cœurs : 24
* Carte graphique
  * Nom : NVIDIA GeForce RTX 2080
  * Mémoire dédiée : 8GB
* Taille de la RAM : 24GB

## A - État initial avant review

1. **Toutes les infos** de l'issue étaient exactes :
   * [ ] Oui
   * [ ] Non
2. Le dépôt était **public** dès le départ :
   * [ ] Oui
   * [x] Non
3. Il y avait un **README** avec des instructions pour compiler/exécuter le code :
   * [ ] Oui
   * [ ] Non
4. Les **données** nécessaires pour reproduire les résultats étaient disponibles :
   * [ ] Oui, toutes
   * [ ] Oui, en grande partie
   * [ ] Non, il manquait des données essentielles
5. Les **éléments à reproduire** étaient accessibles :
   * [ ] Oui, tous
   * [ ] Oui, en grande partie
   * [ ] Non, il manquait des éléments essentiels

Commentaires éventuels :

Le dépôt étant privé au départ je n'ai pas pu juger des autres points.

## B - Procédure suivie pendant la review

Je n'ai pas noté les commandes précisément, mais j'ai du installer les librairies nécessaires moi même, l'une après l'autre en exécutant le code et and voyant les messages d'erreur pour librairies manquantes.

Ensuite l'exécution était directe avec `python nomduscript.py`. Sur les 5 scripts fournis pour reproduire les 5 figures j'ai pu en faire fonctionner seulement 2.

## C - Bilan

### _1 - État du dépôt Git_

* Le dépôt est **public** :
  * [x] Oui
  * [ ] Non
* Il y a un **README** avec des instructions pour compiler/exécuter le code :
  * [ ] Oui, et elles sont exhaustives
  * [ ] Oui, avec quelques détails mineurs qui manquent
  * [x] Oui, avec des informations importantes qui manquent
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

### _2 - Reproductibilité_

1. **Temps de compilation** constaté :
2. **Temps d'exécution** constaté : Moins de 5 secondes par script
3. Le code **compile** :
   * [ ] sans erreur
   * [ ] avec des erreurs
   * [x] non concerné
4. Le code s'**exécute** :
   * [x] sans erreur
   * [ ] avec des erreurs
5. Si le code s'exécute **sans erreur**, cela s'est fait :
   * [x] sans modifications du code initialement soumis
   * [ ] avec quelques changements mineurs du code initialement soumis
   * [ ] avec des changements importants du code initialement soumis
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

Les informations de cette section concernent les 2 scripts fonctionnels 

## Résultat

En tant que reviewer, **j'estime** qu'à la fin de ma review, **le dépôt de l'auteur permet de reproduire les résultats annoncés** :

* [ ] Oui, tous
* [ ] Oui, avec quelques réserves
* [x] Non

Commentaires éventuels :

J'ai pu faire fonctionner les 2 scripts testMultipleSpheres et testSingleSphere mais pas les 3 autres
