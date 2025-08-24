# GRETSI'25 - Label Reproductible - Rapport de l'issue #20

Code testé par Jérémy LAFORET.

## Infos du dépôt

* ID de l'article : 1607
* Titre de l'article : Dépasser les limites des traceurs en imagerie TEP/TDM : une segmentation universelle des lésions pour AutoPET III
* URL du dépôt git du code : [https://github.com/Zhack47/AutopetIII_CHB](https://github.com/Zhack47/AutopetIII_CHB)
* Langage(s) : Python

## Configuration utilisée par le reviewer

* OS (nom et version) : Ubuntu 22.04.4 LTS
* Processeur
  * Nom : 2* Intel Xeon E5-2665
  * Nombre de cœurs : 16
* Carte graphique
  * Nom : Nividia Quadro P4000
  * Mémoire dédiée : 8Go
* Taille de la RAM : 102Go

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
   * [x] Oui, en grande partie
   * [ ] Non, il manquait des éléments essentiels

Commentaires éventuels :

**README** contenant les instructions uniquement dans un sous-dossier, celui de la racine du dépot ne contient que les généralités (réf biblio).

## B - Procédure suivie pendant la review

Non fournie.

## C - Bilan

### _1 - État du dépôt Git_

* Le dépôt est **public** :
  * [x] Oui
  * [ ] Non
* Il y a un **README** avec des instructions pour compiler/exécuter le code :
  * [ ] Oui, et elles sont exhaustives
  * [ ] Oui, avec quelques détails mineurs qui manquent
  * [X] Oui, avec des informations importantes qui manquent
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

Le script manquant a été ajouté, aucune modification des readme malgré mes questions sur l'issue github.

### _2 - Reproductibilité_

1. **Temps de compilation** constaté : 
2. **Temps d'exécution** constaté :
3. Le code **compile** :
   * [x] sans erreur
   * [ ] avec des erreurs
   * [ ] non concerné
4. Le code s'**exécute** :
   * [ ] sans erreur
   * [x] avec des erreurs
5. Si le code s'exécute **sans erreur**, cela s'est fait :
   * [ ] sans modifications du code initialement soumis
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

Le code a été packagé pour répondre à un challenge de machine learning particulier.
Il n'y a quasiment aucune explication pour l'usage du code dans un autre cadre ce qui rend la réutilisation possible faible.

## Résultat

En tant que reviewer, **j'estime** qu'à la fin de ma review, **le dépôt de l'auteur permet de reproduire les résultats annoncés** :

* [ ] Oui, tous
* [ ] Oui, avec quelques réserves
* [x] Non

Commentaires éventuels :

Le dépot répond surement au challenge initial en proposant un container docker. Cependant la quasi absence de documentation n'encourage pas à la réutilisation ou la reproduction des résultats.
