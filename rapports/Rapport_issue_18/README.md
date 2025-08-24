# GRETSI'25 - Label Reproductible - Rapport de l'issue #18

![](../../img/label_or.png)

Code testé par Éric DEBREUVE.

## Infos du dépôt

* ID de l'article : 1550
* Titre de l'article : En quête de précision : Un benchmark open-source et un solveur polyvalent pour le Graphical Lasso
* URL du dépôt git du code : [https://github.com/Perceptronium/benchmark_graphical_lasso](https://github.com/Perceptronium/benchmark_graphical_lasso)
* Langage(s) : Python

## Configuration utilisée par le reviewer

* OS (nom et version) : macOS Sequoia
* Processeur
  * Nom : M2 Pro
  * Nombre de cœurs : 12
* Carte graphique
  * Nom : _voir processeur_
  * Mémoire dédiée : _mémoire partagée_
* Taille de la RAM : 32 Go

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
   * [ ] Oui, tous
   * [x] Oui, en grande partie
   * [ ] Non, il manquait des éléments essentiels

Commentaires éventuels :

Concernant la rubrique « éléments à reproduire », un des éléments est une figure de l’article (donc accessible), l’autre est une page HTML interactive qui permet d’obtenir une autre figure de l’article. La version attendue de la page n’est pas fournie, mais la figure de l’article est, par définition, accessible. Même si la page HTML avait été fournie, une vérification de la conformité avec la page reproduite semble délicate : la page est interactive et peut afficher un nombre important de graphiques différents (vérification visuelle ardue), et il n’est pas dit qu’un « diff » soit adapté (présence possible de timestamps dans le code ; je ne suis pas allé vérifier). Bref, formellement tous les éléments à reproduire n’étaient pas accessibles, certes, mais je ne dirais pas non plus qu’il y a eu un oubli de la part des auteurs.

## B - Procédure suivie pendant la review

Les commandes à exécuter sont fournies dans la rubrique « Informations complémentaires » du README. Il n’y a qu’à faire du copier-coller dans un terminal. J’ai eu toutefois 2 contre-temps.

**Version de Python (et suggestions)**
J’utilise la version 3.13 de Python. En installant gglasso, j’ai eu l’erreur suivante :

`RuntimeError: Cannot install on Python version 3.13.2; only versions >=3.9,<3.13 are supported.`

(Je me permets de jouer les experts !) Les problèmes de compatibilité des codes avec la version de l’interpréteur de l’utilisateur sont courants (ci-dessus, le problème ne vient pas du code des auteurs, mais c’est tout de même un obstacle). Il faut donc préciser dans le README la ou les versions de Python qui permettent l’exécution du code. De plus, il est préférable de proposer à l’utilisateur de créer un environnement virtuel Python de façon à ne pas perturber l’installation de l’utilisateur. Enfin, il y a aussi couramment des problèmes de compatibilité entre les versions des différentes dépendances (je n’ai pas eu de tels soucis ; il s’agit simplement de proposer un conseil). Il est donc préférable de donner les instructions d’installation des dépendances en incluant les versions. Exemple :

`pip install <package>` → `pip install <package>==<version_utilisée_par_les_auteurs>`

Pour revenir à la procédure que j’ai suivie, en préambule des commandes listées dans le README, j’ai créé et activé un environnement virtuel Python (avec Python 3.9).

**Absence d’une dépendance**
En exécutant la commande suivante :

`pip install -e ./benchmark_graphical_lasso/benchmark_utils/skggm/`

J’ai eu l’erreur :

`ModuleNotFoundError: No module named 'Cython'`

Il manquait donc, avant cette commande, la commande d’installation de Cython (Note : je serais passé à côté de cet oubli si je n’avais pas utilisé d’environnement virtuel car, dans mon installation disons “globale”, Cython était déjà installé).

Ce (très léger) contre-temps me fait poser la question suivante : pourquoi avoir proposé d’installer skggm par clonage puis installation alors que ce package est disponible sur Pypi.org et que la dépendance à Cython est prise en compte dans le setup (Cython est donc automatiquement installé, si besoin, lors de l’installation de skggm) ?

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
  * [ ] Oui, tous
  * [x] Oui, en grande partie
  * [ ] Non, il manque des éléments essentiels

Commentaires éventuels :

Voir commentaires de la section « A - État initial avant review », et voir section « B - Procédure suivie pendant la review ».

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
   * [x] exactement
   * [ ] avec quelques différences négligeables
   * [ ] avec quelques différences notables
   * [ ] avec beaucoup de différences

Commentaires éventuels :

Pour la rubrique 4, j’ai répondu « Toujours » car j’ai exécuté 2 fois la génération du benchmark, et une fois celle de la figure 3, chaque fois sans problème. Sachant que ces exécutions durent toutes deux plusieurs dizaines de minutes sur mon ordinateur, j’en reste à ces 3 tests pour répondre « toujours ».

## Résultat

En tant que reviewer, **j'estime** qu'à la fin de ma review, **le dépôt de l'auteur permet de reproduire les résultats annoncés** :

* [x] Oui, tous
* [ ] Oui, avec quelques réserves
* [ ] Non

Commentaires éventuels :

A titre d’information, l’installation ne semble pas possible sur un ordinateur à puce M2 sous Asahi Linux/Fedora Asahi Remix. C’est une configuration probablement très rare, donc aucun souci.

(Si vous avez de temps à perdre) J’ai dû modifier le setup.py de skggm pour arriver au bout de l’installation. Mais ensuite, lors de l’exécution :

`benchopt run ./benchmark_graphical_lasso --config ./benchmark_graphical_lasso/simple_conf.yml`

l’erreur suivante se produit :

```bash
from .pyquic import quic  # NOQA  # NOQA
    ^^^^^^^^^^^^^^^^^^^^^^^^
ImportError: [...]/benchmark_graphical_lasso/benchmark_utils/skggm/inverse_covariance/pyquic/pyquic.cpython-311-aarch64-linux-gnu.so: undefined symbol: dpotrf_
```

(Note : j’ai remplacé le début du chemin complet par […])

Après quelques tentatives de résolution, j’ai rebooté sous macOS.
