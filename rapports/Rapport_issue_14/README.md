# GRETSI'25 - Label Reproductible - Rapport de l'issue #14

![](../../img/label_argent.png)

Code testé par Mathieu LEONARDON.

## Infos du dépôt

* ID de l'article : 1505
* Titre de l'article : Un algorithme de point fixe pour calculer des barycentres robustes entre mesures
* URL du dépôt git du code : [https://github.com/eloitanguy/ot_bar](https://github.com/eloitanguy/ot_bar)
* Langage(s) : Python

## Configuration utilisée par le reviewer

* OS (nom et version) : Ubuntu 24.04.1
* Processeur
  * Nom : AMD Ryzen 9 7945HX
  * Nombre de cœurs : 16x Zen 4 cores
* Carte graphique
  * Nom : Nvidia GeForce RTX 4090
  * Mémoire dédiée : -
* Taille de la RAM : 96 GB

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
   * [x] Oui, toutes
   * [ ] Oui, en grande partie
   * [ ] Non, il manquait des données essentielles
5. Les **éléments à reproduire** étaient accessibles :
   * [x] Oui, tous
   * [ ] Oui, en grande partie
   * [ ] Non, il manquait des éléments essentiels

Commentaires éventuels :

## B - Procédure suivie pendant la review

* J'ai installé un venv python
* J'ai installé les packages de requirements.txt
* Installé un package manquant signalé dans l'issue
* Lancé `python src.py` dans chacun des répertoires listés par les auteurs.
* Eu un échange pour fix un problème de version de package, que les auteurs ont résolu et push sur le repo
* Pu reproduire chacune des figures en faisant varier moi-même les inputs

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

### _2 - Reproductibilité_

1. **Temps de compilation** constaté : N/A
2. **Temps d'exécution** constaté : 20aine de secondes
3. Le code **compile** :
   * [ ] sans erreur
   * [ ] avec des erreurs
   * [x] non concerné
4. Le code s'**exécute** :
   * [x] sans erreur
   * [ ] avec des erreurs
5. Si le code s'exécute **sans erreur**, cela s'est fait :
   * [ ] sans modifications du code initialement soumis
   * [x] avec quelques changements mineurs du code initialement soumis
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

## Résultat

En tant que reviewer, **j'estime** qu'à la fin de ma review, **le dépôt de l'auteur permet de reproduire les résultats annoncés** :

* [x] Oui, tous
* [ ] Oui, avec quelques réserves
* [ ] Non

Commentaires éventuels : Les auteurs ont été très réactifs et toutes les instructions et l'organisation du repo étaient très claires.
