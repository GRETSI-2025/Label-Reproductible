# GRETSI'25 - Label Reproductible - Rapport de l'issue #13

![](../../img/label_argent.png)

Code testé par Charles TRUONG.

## Infos du dépôt

* ID de l'article : 1448
* Titre de l'article : Auto-encodeurs atomiques parcimonie-max et application aux problèmes inverses

* URL du dépôt git du code : [https://github.com/aliJ99/MAX_AAE_n_invP/](https://github.com/aliJ99/MAX_AAE_n_invP/)
* Langage(s) : Python

## Configuration utilisée par le reviewer

* OS (nom et version) : Debian GNU/Linux 12 (bookworm)
* Processeur
  * Nom : Intel(R) Xeon(R) Gold 5220R CPU @ 2.20GHz
  * Nombre de cœurs : 48
* Carte graphique
  * Nom : NVIDIA RTX A2000
  * Mémoire dédiée : 12 GB
* Taille de la RAM : 252 GB

## A - État initial avant review

1. **Toutes les infos** de l'issue étaient exactes :
   * [x] Oui
   * [ ] Non
2. Le dépôt était **public** dès le départ :
   * [x] Oui
   * [ ] Non
3. Il y avait un **README** avec des instructions pour compiler/exécuter le code :
   * [ ] Oui
   * [x] Non
4. Les **données** nécessaires pour reproduire les résultats étaient disponibles :
   * [x] Oui, toutes
   * [ ] Oui, en grande partie
   * [ ] Non, il manquait des données essentielles
5. Les **éléments à reproduire** étaient accessibles :
   * [ ] Oui, tous
   * [ ] Oui, en grande partie
   * [x] Non, il manquait des éléments essentiels

Commentaires éventuels :

## B - Procédure suivie pendant la review

Create fresh virtual environment

```bash
mamba create -n gretsi python=3.9
mamba activate gretsi
```

Install dependencies

```bash
python -m pip install -r requirements.txt
```

Run the scripts

```bash
python trainer.py
python decomposition.py
python python inverse_problem.py
```

I modified the parameters in `Hyperparameters.py` before running the scripts to choose which experiments to run.

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

1. **Temps de compilation** constaté : pas de compilation (Python)
2. **Temps d'exécution** constaté : quelques secondes (pour un nombre d'itérations, _epoch_, faible)
3. Le code **compile** :
   * [ ] sans erreur
   * [ ] avec des erreurs
   * [x] non concerné
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
   * [ ] exactement
   * [x] avec quelques différences négligeables
   * [ ] avec quelques différences notables
   * [ ] avec beaucoup de différences

Commentaires éventuels :

Les résultats nécessitent un apprentissage, donc certains résultats sont légérement différents. Cela reste négligeable.

Les instructions sont relativement claires.

## Résultat

En tant que reviewer, **j'estime** qu'à la fin de ma review, **le dépôt de l'auteur permet de reproduire les résultats annoncés** :

* [x] Oui, tous
* [ ] Oui, avec quelques réserves
* [ ] Non

Commentaires éventuels :

Il est possible de reproduire les résultats de l'article avec le code fourni.

Le code pourrait néanmoins est mieux documenté et modulaire, pour faciliter la prise en main par d'autres chercheurs/chercheuses.
