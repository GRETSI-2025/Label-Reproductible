# GRETSI'25 - Label Reproductible - Rapport de l'issue #21

Code testé par Fabien MILLIOZ.

## Infos du dépôt

* ID de l'article : 1612
* Titre de l'article : Application des réseaux de neurones à valeurs complexes en imagerie SAR polarimétrique
* URL du dépôt git du code : [https://github.com/QuentinGABOT/Reconstruction-PolSAR-Complex-AE](https://github.com/QuentinGABOT/Reconstruction-PolSAR-Complex-AE)
* Langage(s) : Python

## Configuration utilisée par le reviewer

* OS (nom et version) : Debian 12.9
* Processeur
  * Nom : Intel(R) Core(TM) i5-7500 CPU @ 3.40GHz
  * Nombre de cœurs : 4
* Carte graphique
  * Nom : GeForce GTX 1060
  * Mémoire dédiée : 6 Go
* Taille de la RAM : 8 Go

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
   * [ ] Oui, toutes
   * [ ] Oui, en grande partie
   * [X] Non, il manquait des données essentielles
5. Les **éléments à reproduire** étaient accessibles :
   * [ ] Oui, tous
   * [ ] Oui, en grande partie
   * [ ] Non, il manquait des éléments essentiels

Commentaires éventuels :

## B - Procédure suivie pendant la review

```bash
python3 -m virtualenv venv
source venv/bin/activate
python -m pip install .
python -m torchtmpl.main config.yml test logs/AutoEncoder
```

## C - Bilan

### _1 - État du dépôt Git_

* Le dépôt est **public** :
  * [X] Oui
  * [ ] Non
* Il y a un **README** avec des instructions pour compiler/exécuter le code :
  * [ ] Oui, et elles sont exhaustives
  * [X] Oui, avec quelques détails mineurs qui manquent
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

1. **Temps de compilation** constaté : N/A
2. **Temps d'exécution** constaté : 25 minutes
3. Le code **compile** :
   * [ ] sans erreur
   * [ ] avec des erreurs
   * [X] non concerné
4. Le code s'**exécute** :
   * [X] sans erreur
   * [ ] avec des erreurs
5. Si le code s'exécute **sans erreur**, cela s'est fait :
   * [X] sans modifications du code initialement soumis
   * [ ] avec quelques changements mineurs du code initialement soumis
   * [ ] avec des changements importants du code initialement soumis
6. Les **résultats attendus** sont obtenus :
   * [X] toujours
   * [ ] parfois
   * [ ] jamais
7. Les **résultats obtenus** correspondent à ceux indiqués par les auteurs dans leur papier :
   * [ ] exactement
   * [ ] avec quelques différences négligeables
   * [X] avec quelques différences notables
   * [ ] avec beaucoup de différences

Commentaires éventuels :

La référence pour la figure 6 n'est pas celle utilisée dans le papier.

## Résultat

En tant que reviewer, **j'estime** qu'à la fin de ma review, **le dépôt de l'auteur permet de reproduire les résultats annoncés** :

* [ ] Oui, tous
* [X] Oui, avec quelques réserves
* [ ] Non

Commentaires éventuels :

Il faudrait corriger la référence de la figure 6, éventuellement investiguer les différences mineures de la figure 3 à droite.
