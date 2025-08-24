# GRETSI'25 - Label Reproductible - Rapport de l'issue #28

![](../../img/label_argent.png)

Code testé par Guillaume BECQ.

## Infos du dépôt

* ID de l'article : 1701
* Titre de l'article : Comment spécialiser DINOv2 pour l’astronomie ?
* URL du dépôt git du code : [https://github.com/matthieulel/finetune_dinov2_astronomy.git](https://github.com/matthieulel/finetune_dinov2_astronomy.git)
* Langage(s) : Python

## Configuration utilisée par le reviewer

* OS (nom et version) : Ubuntu 22.04.5 LTS
* Processeur
  * Nom : Intel® Core™ i5-8365U CPU @ 1.60GHz × 8
  * Nombre de cœurs : 8
* Carte graphique
  * Nom : Mesa Intel® UHD Graphics 620 (WHL GT2)
  * Mémoire dédiée :
* Taille de la RAM : 8,0 Gio

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
   * [X] Oui, en grande partie
   * [ ] Non, il manquait des données essentielles
5. Les **éléments à reproduire** étaient accessibles :
   * [X] Oui, tous
   * [ ] Oui, en grande partie
   * [ ] Non, il manquait des éléments essentiels

Commentaires éventuels :

## B - Procédure suivie pendant la review

Dans le readme il était indiqué `installation avec conda (recommandé)`

* Je n'avais pas conda, j'ai créé un environnement avec python :
`python -m venv ./testgretsi/`
* je suis allé dans le dossier : `cd ./testgretsi/`
* j'ai activé cet environnement : `source ~/testgretsi/bin/activate`.
* j'ai ensuite chargé le code du dépôt et suivi les procédures d'installation :

```bash
git clone https://github.com/matthieulel/   finetune_dinov2_astronomy.git`  
cd ./finetune_dinov2_astronomy/    
pip install -r requirements.txt  
```

* j'ai été obligé de créer un nouveau noyau `testgretsi`, basé sur l'environnement actuel pour pouvoir utiliser celui-ci dans `jupyter lab` et exécuter les notebooks téléchargés pour reproduire les figures : `python -m ipykernel install --user --name testgretsi`
* après exécution de la commande `jupyter lab`, et l'ouverture des notebook il a fallu changer de kernel, cliquant sur le kernel en haut à droite, ou en allant dans le menu `kernel\change kernel` et choisir `testgretsi`.

Ensuite tout a eu l'air de fonctionner.
Cependant, je n'ai pas réussi à aller jusqu'au bout des calculs et génération des figures.
En effet, mes kernels pour `tsne_fig3_fig5.ipynb` et `tsne_mnist_fig6.ipynb` ont planté, certainement parcque le CPU n'arrivait pas à suivre, les calculs devant s'effectuer sur une carte graphique que je n'avais pas sur mon ordinateur portable.
J'ai toutefois obtenu la première figure dans `tsne_mnist_fig6.ipynb` identique à celle de l'article.

Pour le notebook `matriceFig4_Tab2Dinov2.ipynb`, les résultats de la matrice de confusion que j'ai obtenu sont un peu différents.
Par exemple pour la première ligne j'ai obtenu (58, 2, 7, 11, 2, 5, 2, 19, 3, 0) au lieu de (57, 2, 7, 11, 2, 5, 2, 20, 3, 0) présenté dans l'article.

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
  * [ ] Oui, toutes
  * [X] Oui, en grande partie
  * [ ] Pas encore, elles le seront si l'article est accepté et le label décerné
  * [ ] Non, il manque des données essentielles qui ne pourront pas être rendues publiques
* Les **éléments à reproduire** sont accessibles :
  * [X] Oui, tous
  * [ ] Oui, en grande partie
  * [ ] Non, il manque des éléments essentiels

Commentaires éventuels :

Le code semble pouvoir être utilisable sans conda.

### _2 - Reproductibilité_

1. **Temps de compilation** constaté : 30 minutes d'installation avec chargement de 6 Go de fichiers.
2. **Temps d'exécution** constaté : varie suivant les notebooks. 30 min pour `matriceFig4_Tab2Dinov2.ipynb`, 1 h pour la première étape de `tsne_mnist_fig6.ipynb` etc.
3. Le code **compile** :
   * [ ] sans erreur
   * [ ] avec des erreurs
   * [X] non concerné
4. Le code s'**exécute** :
   * [X] sans erreur
   * [] avec des erreurs
5. Si le code s'exécute **sans erreur**, cela s'est fait :
   * [X] sans modifications du code initialement soumis
   * [ ] avec quelques changements mineurs du code initialement soumis
   * [ ] avec des changements importants du code initialement soumis
6. Les **résultats attendus** sont obtenus :
   * [ ] toujours
   * [X] parfois
   * [ ] jamais
7. Les **résultats obtenus** correspondent à ceux indiqués par les auteurs dans leur papier :
   * [ ] exactement
   * [X] avec quelques différences négligeables
   * [ ] avec quelques différences notables
   * [ ] avec beaucoup de différences

Commentaires éventuels :

## Résultat

En tant que reviewer, **j'estime** qu'à la fin de ma review, **le dépôt de l'auteur permet de reproduire les résultats annoncés** :

* [ ] Oui, tous
* [X] Oui, avec quelques réserves
* [ ] Non

Commentaires éventuels :

Ca devrait fonctionner avec une bonne machine et un gpu.
Le cas sans carte graphique est géré, mais ma machine plante au bout d'une heure de calculs pour des raisons indéterminés, ça arrive parfois en passant par jupyter lab. J'ai essayé avec une forme classique modulaire sous forme de "nomdumodule.py", et j'ai exécuté `python nomdumodule.py`.
Le calcul n'a pas aboutit et s'est arreté au bout de 42 min, avec le résultat suivant :

```bash
Device : cpu
Using a slow image processor as `use_fast` is unset and a slow processor was saved with this model. `use_fast=True` will be the default behavior in v4.52, even if the model was saved with a slow processor. This will result in minor differences in outputs. You'll still be able to use a slow processor with `use_fast=False`.
Extraction des features...:  56%|███████▎     | 281/499 [42:26<44:06, 12.14s/it]
Processus arrêté
```
