# GRETSI'25 - Label Reproductible - Rapport de l'issue #03

Code testé par David MARY.

## Infos du dépôt

* ID de l'article : 1426
* Titre de l'article : Exploitation d’à priori dans les méthodes de descente : application à la méthode de Newton
* URL du dépôt git du code : [https://framagit.org/jbaudais/newton](https://framagit.org/jbaudais/newton)
* Langage(s) : Python

## Configuration utilisée par le reviewer

* OS (nom et version) : Mac Sequoia 15.5
* Processeur
  * Nom : Appel M2 Pro
  * Nombre de cœurs :
* Carte graphique
  * Nom :
  * Mémoire dédiée :
* Taille de la RAM : 32Go

## A - État initial avant review

1. **Toutes les infos** de l'issue étaient exactes :
   * [ ] Oui
   * [x] Non
2. Le dépôt était **public** dès le départ :
   * [ ] Oui
   * [x] Non
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

Difficile d’accéder au code, cela a demandé plusieurs itérations malgré la disponibilité et bonne volonté de l’auteur. Une fois que l’accès m’a été autorisé, j’ai ppu charger le code mais rencontré des difficultés pour compiler en raison de la l’absence de librairies (sagemath). Je n’ai plus de temps pour continuer à essayer de faire fonctionner, le code désolé.

## B - Procédure suivie pendant la review

Le détail de nos itérations se trouve sur Github.

## C - Bilan

### _1 - État du dépôt Git_

* Le dépôt est **public** :
  * [ ] Oui
  * [x] Non
* Il y a un **README** avec des instructions pour compiler/exécuter le code :
  * [ ] Oui, et elles sont exhaustives
  * [ ] Oui, avec quelques détails mineurs qui manquent
  * [x] Oui, avec des informations importantes qui manquent
  * [ ] Non
* Les **données** nécessaires pour reproduire les résultats sont disponibles publiquement :
  * [ ] Oui, toutes
  * [ ] Oui, en grande partie
  * [ ] Pas encore, elles le seront si l'article est accepté et le label décerné
  * [x] Non, il manque des données essentielles qui ne pourront pas être rendues publiques
* Les **éléments à reproduire** sont accessibles :
  * [ ] Oui, tous
  * [ ] Oui, en grande partie
  * [ ] Non, il manque des éléments essentiels

Commentaires éventuels :

Il me semble qu’en l’état si chaque personne qui veut reproduire le code doit suivre le même chemin que moi cela peut-être long et un peu décourageant (également pour l’auteur d’ailleurs, s’il doit faire le lien avec le service informatique pour autoriser l’accès à chaque fois, comme cela a été le cas pour moi). De plus je pense qu’il faudrait un joindre topo signalant la nécessité d’avoir installé sagemath pour compiler, et donnant les infos pour son installation (j’ai jeté l’éponge à ce moment là après plusieurs tentatives et recherches).

### _2 - Reproductibilité_

1. **Temps de compilation** constaté :
2. **Temps d'exécution** constaté :
3. Le code **compile** :
   * [ ] sans erreur
   * [ ] avec des erreurs
   * [x] non concerné
4. Le code s'**exécute** :
   * [ ] sans erreur
   * [ ] avec des erreurs
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

Pas réussi à compiler.

## Résultat

En tant que reviewer, **j'estime** qu'à la fin de ma review, **le dépôt de l'auteur permet de reproduire les résultats annoncés** :

* [ ] Oui, tous
* [ ] Oui, avec quelques réserves
* [x] Non

Commentaires éventuels :

Le processus a bloqué du point de vue de l’accès, puis de l’installation de librairies (sagemath) malgré la disponibilité de l’auteur. Le code lui-même est peut-être sans problème.
