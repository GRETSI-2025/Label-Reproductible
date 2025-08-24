# GRETSI'25 - Label Reproductible - Rapport de l'issue #25

![](../../img/label_argent.png)

Code testé par Marc DONIAS.

## Infos du dépôt

* ID de l'article : 1674
* Titre de l'article : Weighted tensorized fractional Brownian textures
* URL du dépôt git du code : [https://github.com/claunay/wtfbf](https://github.com/claunay/wtfbf)
* Langage(s) : MATLAB

## Configuration utilisée par le reviewer

* OS (nom et version) : Windows 11 Professionnel 64bits (10.0, Build 26100)
* Processeur
  * Nom : i7-13700H
  * Nombre de cœurs : 14 (6 P-cores, 8 E-cores, 20 threads)
* Carte graphique
  * Nom : NVIDIA Geforce RTX 4070 Laptop
  * Mémoire dédiée : 8 Go
* Taille de la RAM : 64 Go

## A - État initial avant review

1. **Toutes les infos** de l'issue étaient exactes :
   * [ ] Oui
   * [x] Non
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

* confusion compilation/exécution (code purement Matlab -> pas de temps de compilation égal à 1 min indiqué dans l’issue et la partie « lourde » est une partie d’exécution) 
* plus d’images produites (une par fenêtre) que présentées dans l’article (2 fractional Brownian fields intercalés entre les deux ensembles de 6 images de l’article)
* plus de nombres produits que présentés dans l’article 
* souci de signe sur le skewness (-0,00062901 obtenu au lieu de 6.10^-4 reporté dans l’article)

## B - Procédure suivie pendant la review

Le lancement séquentiel des fonctions wtfbf_synthesis.m et wtfbf_analysis.m donne lieu à l’exécution immédiate des codes de calcul qui conduisent à la production des images (une par fenêtre) et des nombres reportés dans l’article (au bémol du signe de l’un d’entre-eux)

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

1. **Temps de compilation** constaté :
2. **Temps d'exécution** constaté :
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
   * [ ] exactement
   * [x] avec quelques différences négligeables
   * [ ] avec quelques différences notables
   * [ ] avec beaucoup de différences

Commentaires éventuels :

souci de signe sur l’un des 9 nombres de la table 1

## Résultat

En tant que reviewer, **j'estime** qu'à la fin de ma review, **le dépôt de l'auteur permet de reproduire les résultats annoncés** :

* [ ] Oui, tous
* [x] Oui, avec quelques réserves
* [ ] Non

Commentaires éventuels :

souci de signe sur l’un des 9 nombres de la table 1
