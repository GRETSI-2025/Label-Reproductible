# GRETSI'25 - Label Reproductible - Rapport de l'issue #09

![](../../img/label_argent.png)

Code testé par Louise FRIOT GIROUX.

## Infos du dépôt

* ID de l'article : 1449
* Titre de l'article : SIMuLDiTex : Un modèle de diffusion léger, mono-image et multi-échelle pour la synthèse de texture. 
* URL du dépôt git du code : [https://github.com/PierrickCh/SIMuLDiTex](https://github.com/PierrickCh/SIMuLDiTex)
* Langage(s) : Python

## Configuration utilisée par le reviewer

* OS (nom et version) : Ubuntu 24.04.2 LTS
* Processeur
  * Nom : Intel(R) Xeon(R) Gold 6128 CPU @ 3.40GHz
  * Nombre de cœurs : 12
* Carte graphique
  * Nom : NVIDIA GeForce GTX 1080 Ti
  * Mémoire dédiée : 11 Go
* Taille de la RAM : 125 Go

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

Le README inclus dans le dépôt conseille d'installer l'environnement avec conda :
```bash
conda env create -f requirements.yml
conda activate simulditex 
```

Ensuite il suffit de lancer le notebook 'experiments.ipynb', en modifiant les paramètres souhaités directement dans le notebook. Le contenu du notebook permet de faire de nombreux tests.

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

1. **Temps de compilation** constaté : 0
2. **Temps d'exécution** constaté : 00:04:30
3. Le code **compile** :
   * [ ] sans erreur
   * [ ] avec des erreurs
   * [X] non concerné
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
   * [X] exactement
   * [ ] avec quelques différences négligeables
   * [ ] avec quelques différences notables
   * [ ] avec beaucoup de différences

Commentaires éventuels :

C'est une méthode de génération de texture par modèle de diffusion. Ceux-ci utilisent du bruit gaussien aléatoire, les résultats diffèrent donc d'une expérience à l'autre selon la graine utilisée. Mais j'ai obtenu des résultats en accord avec ceux du papier.

## Résultat

En tant que reviewer, **j'estime** qu'à la fin de ma review, **le dépôt de l'auteur permet de reproduire les résultats annoncés** :

* [X] Oui, tous
* [ ] Oui, avec quelques réserves
* [ ] Non

Commentaires éventuels :
