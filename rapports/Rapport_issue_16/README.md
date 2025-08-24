# GRETSI'25 - Label Reproductible - Rapport de l'issue #16

![](../../img/label_argent.png)

Code testé par Quentin BAMMEY.

## Infos du dépôt

* ID de l'article : 1543
* Titre de l'article : Déconvolution Dynamique par Descente de Gradient Préconditionnée
* URL du dépôt git du code : [https://gitlab-student.centralesupelec.fr/joseph.gabet/gretsi-2025](https://gitlab-student.centralesupelec.fr/joseph.gabet/gretsi-2025)
* Langage(s) : français

## Configuration utilisée par le reviewer

* OS (nom et version) : Arch Linux Linux 6.14.7-zen2-1-zen
* Processeur
  * Nom : 13th Gen Intel(R) Core(TM) i9-13950HX
  * Nombre de cœurs : 24, 2 threads/core
* Carte graphique non utilisée pour cette review
* Taille de la RAM : 128 Gb

## A - État initial avant review

1. **Toutes les infos** de l'issue étaient exactes :
   * [X] Oui
   * [ ] Non
2. Le dépôt était **public** dès le départ :
   * [X] Oui
   * [ ] Non
3. Il y avait un **README** avec des instructions pour compiler/exécuter le code :
   * [X] Oui
   * [ ] Non
4. Les **données** nécessaires pour reproduire les résultats étaient disponibles :
   * [X] Oui, toutes
   * [ ] Oui, en grande partie
   * [ ] Non, il manquait des données essentielles
5. Les **éléments à reproduire** étaient accessibles :
   * [X] Oui, tous
   * [ ] Oui, en grande partie
   * [ ] Non, il manquait des éléments essentiels

Commentaires éventuels :

## B - Procédure suivie pendant la review

Non fournie.

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
  * [X] Oui, toutes
  * [ ] Oui, en grande partie
  * [ ] Pas encore, elles le seront si l'article est accepté et le label décerné
  * [ ] Non, il manque des données essentielles qui ne pourront pas être rendues publiques
* Les **éléments à reproduire** sont accessibles :
  * [X] Oui, tous
  * [ ] Oui, en grande partie
  * [ ] Non, il manque des éléments essentiels

Commentaires éventuels :

### _2 - Reproductibilité_

1. **Temps de compilation** constaté : n/a
2. **Temps d'exécution** constaté : 2 minutes
3. Le code **compile** :
   * [X] sans erreur
   * [ ] avec des erreurs
   * [ ] non concerné
4. Le code s'**exécute** :
   * [X] sans erreur
   * [ ] avec des erreurs
5. Si le code s'exécute **sans erreur**, cela s'est fait :
   * [ ] sans modifications du code initialement soumis
   * [X] avec quelques changements mineurs du code initialement soumis
   * [ ] avec des changements importants du code initialement soumis
6. Les **résultats attendus** sont obtenus :
   * [X] toujours
   * [ ] parfois
   * [ ] jamais
7. Les **résultats obtenus** correspondent à ceux indiqués par les auteurs dans leur papier :
   * [ ] exactement
   * [X] avec quelques différences négligeables
   * [ ] avec quelques différences notables
   * [ ] avec beaucoup de différences

Commentaires éventuels :

Quelques différences car la seed aléatoire n'est pas fixée, mais la différence n'est pas significative

## Résultat

En tant que reviewer, **j'estime** qu'à la fin de ma review, **le dépôt de l'auteur permet de reproduire les résultats annoncés** :

* [X] Oui, tous
* [ ] Oui, avec quelques réserves
* [ ] Non

Commentaires éventuels :

Changements mineurs effectués par les auteurs (chemins des fichiers pour sauvegarder les résultats) afin que le code s'exécute
