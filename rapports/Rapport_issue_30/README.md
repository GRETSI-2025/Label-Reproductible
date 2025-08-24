# GRETSI'25 - Label Reproductible - Rapport de l'issue #30

Code testé par Thomas BAUDIER.

## Infos du dépôt

* ID de l'article : 1728
* Titre de l'article : Robust PCA: ℓ1-norm Matrix Approximation with Random Sample
Consensus and Riemannian Optimization
* URL du dépôt git du code : [https://github.com/maxdunitz/reproducible_pca_project_gretsi](https://github.com/maxdunitz/reproducible_pca_project_gretsi)
* Langage(s) : Python

## Configuration utilisée par le reviewer

* OS (nom et version) : MacOS Sequoia 15.4.1
* Processeur
  * Nom : Intel Core i5
  * Nombre de cœurs : 4
* Carte graphique
  * Nom : NA
  * Mémoire dédiée : NA
* Taille de la RAM : 16 Go

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

Erreur sur le nom d'un fichier python au début.

## B - Procédure suivie pendant la review

```bash
pip install tensorflow jupyter pandas pymanopt torch tqdm autograd ipykernel keras scikit-learn numpy matplotlib
python figure_1.py
python figure_2.py
python figure_5.py
#Run the jupyter notebook repro.ipynb
```

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

Erreur réparée

### _2 - Reproductibilité_

1. **Temps de compilation** constaté : NA
2. **Temps d'exécution** constaté : < 1h
3. Le code **compile** : NA
   * [ ] sans erreur
   * [ ] avec des erreurs
   * [ ] non concerné
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
   * [x] exactement
   * [ ] avec quelques différences négligeables
   * [ ] avec quelques différences notables
   * [ ] avec beaucoup de différences

Commentaires éventuels :

Les résultats obtenus sont les figures du papier. Visuellement les figures se ressemblent mais il n'y a pas de données quantitatives pour comparer les résultats.

## Résultat

En tant que reviewer, **j'estime** qu'à la fin de ma review, **le dépôt de l'auteur permet de reproduire les résultats annoncés** :

* [x] Oui, tous
* [ ] Oui, avec quelques réserves
* [ ] Non

Commentaires éventuels :

Les figures sont reproduites et visuellement semblables. Pas de données quantitatives pour comparer les figures avec celles du papier.
