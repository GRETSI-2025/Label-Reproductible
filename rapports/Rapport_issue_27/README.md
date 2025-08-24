# GRETSI'25 - Label Reproductible - Rapport de l'issue 27

![](../../img/label_or.png)

Code testé par Benjamin PERRET.

## Infos du dépôt

* ID de l'article : 1697
* Titre de l'article : Sigcor - un paquet Python pour le calcul de seuils de coefficients de corrélation significatifs pour des petits et grands échantillons
* URL du dépôt git du code : [https://github.com/gjpcbecq/gretsi_2025_sigcor](https://github.com/gjpcbecq/gretsi_2025_sigcor)
* Langage(s) : anglais

## Configuration utilisée par le reviewer

* OS (nom et version) : Windows 11
* Processeur
  * Nom : i9-13900HX
  * Nombre de cœurs :  24
* Carte graphique
  * Nom : NVIDIA 4070
  * Mémoire dédiée : 8 Gb
* Taille de la RAM : 32 Gb

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

```bash
conda create -n gretsi python=3.12
conda activate gretsi
git clone https://github.com/gjpcbecq/sigcor
cd sigcor 
pip install .
cd ..
git clone https://github.com/gjpcbecq/gretsi_2025_sigcor
cd gretsi_2025_sigcor
pip install ipykernel matplolib
```

ouvrir le notebook python avec votre méthode favorite, par exemple

```bash
code Gretsi_2025_figures.ipynb
```

exécuter le notebook

## C - Bilan

### _1 - État du dépôt Git_

* Le dépôt est **public** :
  * [x] Oui
  * [ ] Non
* Il y a un **README** avec des instructions pour compiler/exécuter le code :
  * [ ] Oui, et elles sont exhaustives
  * [x] Oui, avec quelques détails mineurs qui manquent
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

Il y a 2 dépendances manquantes pour pouvoir exécuter le notebook :

* matplolib
* ce qu'il faut pour exécuter le notebook (a minima ipykernel)

### _2 - Reproductibilité_

1. **Temps de compilation** constaté : 0
2. **Temps d'exécution** constaté : <1 minute
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

## Résultat

En tant que reviewer, **j'estime** qu'à la fin de ma review, **le dépôt de l'auteur permet de reproduire les résultats annoncés** :

* [x] Oui, tous
* [ ] Oui, avec quelques réserves
* [ ] Non

Commentaires éventuels :
