# GRETSI'25 - Label Reproductible - Rapport de l'issue #04

![](../../img/label_argent.png)

Code testé par Jean-Baptiste COURBOT.

## Infos du dépôt

* ID de l'article : 1427
* Titre de l'article : Radar OFDM ou radar à bruit : le cas du DVB-T2
* URL du dépôt git du code : [https://framagit.org/jbaudais/dvbt2](https://framagit.org/jbaudais/dvbt2)
* Langage(s) : Python

## Configuration utilisée par le reviewer

* OS (nom et version) : Ubuntu 24.04
* Processeur
  * Nom : Intel Core ultra 9
  * Nombre de cœurs : 16
* Carte graphique
  * Nom :
  * Mémoire dédiée :
* Taille de la RAM : 64 Go

## A - État initial avant review

1. **Toutes les infos** de l'issue étaient exactes :
   * [x] Oui
   * [ ] Non
2. Le dépôt était **public** dès le départ :
   * [ ] Oui
   * [x] Non
3. Il y avait un **README** avec des instructions pour compiler/exécuter le code :
   * [x] Oui
   * [ ] Non
4. Les **données** nécessaires pour reproduire les résultats étaient disponibles :
   * [x] Oui, toutes
   * [ ] Oui, en grande partie
   * [ ] Non, il manquait des données essentielles
5. Les **éléments à reproduire** étaient accessibles :
   * [x] Oui, tous
   * [ ] Oui, en grande partie
   * [ ] Non, il manquait des éléments essentiels

Commentaires éventuels :

## B - Procédure suivie pendant la review

Les différents codes sont fournir pour reproduire les figures et résultats un par un. Pour rassembler le tout je les ai intégrés dans un notebook jupyter ; et les ai lancé sans modification.

## C - Bilan

### _1 - État du dépôt Git_

* Le dépôt est **public** :
  * [ ] Oui
  * [x] Non
* Il y a un **README** avec des instructions pour compiler/exécuter le code :
  * [x] Oui, et elles sont exhaustives
  * [ ] Oui, avec quelques détails mineurs qui manquent
  * [ ] Oui, avec des informations importantes qui manquent
  * [ ] Non
* Les **données** nécessaires pour reproduire les résultats sont disponibles publiquement :
  * [ ] Oui, toutes
  * [ ] Oui, en grande partie
  * [x] Pas encore, elles le seront si l'article est accepté et le label décerné
  * [ ] Non, il manque des données essentielles qui ne pourront pas être rendues publiques
* Les **éléments à reproduire** sont accessibles :
  * [x] Oui, tous
  * [ ] Oui, en grande partie
  * [ ] Non, il manque des éléments essentiels

Commentaires éventuels :

### _2 - Reproductibilité_

1. **Temps de compilation** constaté :
2. **Temps d'exécution** constaté :
3. Le code **compile** :
   * [x] sans erreur
   * [ ] avec des erreurs
   * [ ] non concerné
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
   * [ ] exactement
   * [x] avec quelques différences négligeables
   * [ ] avec quelques différences notables
   * [ ] avec beaucoup de différences

Commentaires éventuels :

Les différences proviennent de variations aléatoires de simulation, comme indiqué par l’auteur : les valeurs diffèrent mais les tendances ne changent pas.

## Résultat

En tant que reviewer, **j'estime** qu'à la fin de ma review, **le dépôt de l'auteur permet de reproduire les résultats annoncés** :

* [x] Oui, tous
* [ ] Oui, avec quelques réserves
* [ ] Non

Commentaires éventuels :

Il pourrait être plus pratique de présenter ce travail via un notebook Jupyter, qui rassemblerait tous les codes permettant de reproduire les figures et permettrait d’avoir en un seul document le contenu du Readme.md actuel et les résultats numériques et graphiques.
