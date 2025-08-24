# GRETSI'25 - Label Reproductible - Rapport de l'issue #26

Code testé par Youenn MEREL.

## Infos du dépôt

* ID de l'article : 1636
* Titre de l'article : De l'importance de la validation croisée
* URL du dépôt git du code : [https://github.com/ceelestin/benchmark_regression](https://github.com/ceelestin/benchmark_regression)
* Langage(s) : Python

## Configuration utilisée par le reviewer

* OS (nom et version) : Debian GNU/Linux 11 (bullseye)
* Processeur
  * Nom : 2 AMD EPYC 7742
  * Nombre de cœurs : 2x64
* Carte graphique
  * Nom :  N/A
  * Mémoire dédiée : N/A
* Taille de la RAM : 512G

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

## B - Procédure suivie pendant la review

```bash
# Initialisation de l'environnement python
conda create -n benchopt python
conda activate benchopt
# Installation du repo benchopt
pip install git+https://github.com/benchopt/benchopt/
benchopt install benchmark_regression
# Exécution complète (1000 seeds) avec cache sur 128 coeur
benchopt run benchmark_regression --no-timeout -j 128 --config benchmark_regression/config_learning_full.yml
# Exécution complète (1000 seeds) sans cache sur 128 coeur
benchopt run benchmark_regression --no-cache --no-plot --no-timeout -j 128 --config benchmark_regression/config_learning_full.yml
# Exécution réduite (10 seeds) sans cache sur 256 coeur
benchopt run benchmark_regression --no-cache --no-plot --no-timeout -j 256 --config benchmark_regression/config_learning_short.yml
```

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

Il serait pertinent d'ajouter dans le readme :

* espace disque nécessaire
* nombre d'inodes nécessaire
* commande pour exécuter sans écriture de cache (et estimation du temps correspondant)
* estimation du temps d'exécution pour le fichier `config_learning_small.yml`

### _2 - Reproductibilité_

1. **Temps de compilation** constaté : 5 minutes
2. **Temps d'exécution** constaté :
Full (1000 seeds, 128 cores) : inconnu, mais > 6 jours (avec cache), > 4j (sans cache)
Small (10 seeds, 256 cores) : 5h34
3. Le code **compile** :
   * [x] sans erreur
   * [ ] avec des erreurs
   * [ ] non concerné
4. Le code s'**exécute** :
   * [x] sans erreur
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

Au moment de la deadline, je ne suis pas parvenu à exécuter le code jusqu'au bout pour le fichier `config_learning_full.yml`.

J'ai rencontré les difficultés suivantes :

* D'abord problème d'espace disque sur le cluster que j'utilise (taille du cache)
* puis problème d'inodes (nombre de fichiers écrit) sur le cluster (taille du cache)
 
Ce dernier problème ne pouvant être résolu, j'ai testé l'exécution le code avec des options permettant de ne pas utiliser de cache (normalement 5 x plus rapide)

* j'ai atteint la limite de durée de job sur le cluster (96 heure), sans reprise possible faute de cache

J'ai exécuté le code sur le fichier `config_learning_small.yml` (10 seeds au lieu de 1000)

* le code s'est exécuté sans erreur en 5h36 et a généré un fichier `.parquet`
* j'ai pu générer des figures semblables aux figures à reproduire avec le fichier `learning_rank.py`, mais
  * j'ai dû commenter l'utilisation de la méthode `merge_duplicate_rows` car elle produisait une erreur `"Column(s) ['idx_rep'] do not exist"`
  * les figures ne correspondent pas à celles du papier, ce qui est logique car il ne s'agit pas des données complètes

## Résultat

En tant que reviewer, **j'estime** qu'à la fin de ma review, **le dépôt de l'auteur permet de reproduire les résultats annoncés** :

* [ ] Oui, tous
* [ ] Oui, avec quelques réserves
* [ ] Non

Commentaires éventuels :

N'étant pas parvenu à exécuter le code jusqu'au bout sur les données complètes, je ne peux pas me prononcer sur la reproductibilité des résultats.

Cependant j'estime que :

* le depôt est complet
* les instructions fournies sont suffisantes pour exécuter le code et reproduire les résultats

Les problèmes que j'ai rencontrés sont liés aux importantes ressources nécessaires et au temps d'exécution très long.
