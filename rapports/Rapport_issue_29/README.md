# GRETSI'25 - Label Reproductible - Rapport de l'issue #29

![](../../img/label_argent.png)

Code testé par David JIA.

## Infos du dépôt

* ID de l'article : 1738
* Titre de l'article : Algorithme EM stochastique pour modèles d’espace d’états linéaires en bruits impulsifs : application à la radio interférométrie
* URL du dépôt git du code : [https://github.com/NawelAr/GRETSI-2025-submission](https://github.com/NawelAr/GRETSI-2025-submission)
* Langage(s) : Python

## Configuration utilisée par le reviewer

* OS (nom et version) : Ubuntu 24.04.2 LTS
* Processeur
  * Nom : 11th Gen Intel(R) Core(TM) i7-11850H
  * Nombre de cœurs : 8
* Carte graphique
  * Nom : RTX A2000 Mobile
  * Mémoire dédiée : 4 Go
* Taille de la RAM : 32 Go

## A - État initial avant review

1. **Toutes les infos** de l'issue étaient exactes :
   * [X] Oui
   * [ ] Non
2. Le dépôt était **public** dès le départ :
   * [ ] Oui
   * [X] Non
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

Comme indiqué dans le README :

1. créer l'environnement, qui sera appelé `venv` et installer les librairies du fichier `requirements.txt`

    ```bash
    ./install.sh
    ```

2. Modifier les paramètres nécessaires dans les fichiers Python, comme le nombre d'itérations dans `main.py` dans la ligne 40 suivante : `model, smoothed_estimates, MMSE = run_em_algorithm(visibilities, dirty, FOp, model_images, tau, n_iterations=10)`

3. lancer le fichier d'exécution :

```bash
./run.sh
```

Remarque : il se peut que l'on rencontre des problèmes vis-à-vis du chemin vers la bonne version Python dans l'environnement virtuel. Pour gérer cela, on peut seulement supprimer l'environnement virtuel `venv` et le réinstaller avec `./install.sh`.

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

Seule une instruction sur le nombre d'itérations recommandé manquait. L'auteure a indiqué qu'il en fallait entre 10 et 20 pour obtenir des performances similaires à celles de l'article.
De plus, il y a un WARNING sur les nombres complexes qu'il serait bien de résoudre.

### _2 - Reproductibilité_

1. **Temps de compilation** constaté : 0.002 secondes (Python n'est pas un langage compilé)
2. **Temps d'exécution** constaté : ~2h30 pour 20 itérations
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

Il y a 2 fichiers Python redondants qui correspondent au même algorithme (1 initial et 1 avec du code optimisé). Il serait bien de n'en laisser qu'un seul.

## Résultat

En tant que reviewer, **j'estime** qu'à la fin de ma review, **le dépôt de l'auteur permet de reproduire les résultats annoncés** :

* [X] Oui, tous
* [ ] Oui, avec quelques réserves
* [ ] Non

Commentaires éventuels :

J'ai bien été en mesure de reproduire les résultats annoncés dans l'article. Résultats obtenus : SSIM=0.934 et PSNR=32.950 dB

Recommendations de programmation pour l'auteure :

* ajouter quelques traces/logs/print en plus dans les simulations pour mieux suivre la convergence de l'algorithme (e.g. ajouter par itération le temps d'exécution, les performances par itération, etc.)
* plusieurs commentaires étaient présents, mais il faudrait en ajouter dans les fonctions dans `em.py`.
* privilégier la programmation orienté objet.
