# GRETSI'25 - Label Reproductible - Rapport de l'issue #24

![](../../img/label_argent.png)

Code testé par Mathilde DUPOUY.

## Infos du dépôt

* ID de l'article : 1458
* Titre de l'article : Transformée de Kravchuk réalignée, implémentation efficace et illustration sur signaux élémentaires et réels
* URL du dépôt git du code : [https://github.com/bpascal-fr/from-kravchuk-to-ssht](https://github.com/bpascal-fr/from-kravchuk-to-ssht)
* Langage(s) : Python (3.12.7)

## Configuration utilisée par le reviewer

* OS (nom et version) : Fedora Linux 40
* Processeur
  * Nom : Intel® Core™ Ultra 7 165H × 22
  * Nombre de cœurs : 16 (6 Performance, 8 Efficient, 2 "faible efficacité énergétique")
* Carte graphique
  * Nom : Intel® Arc™ Graphics (MTL)
  * Mémoire dédiée : 16 GB
* Taille de la RAM : 32 GB

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

### Suivi des instructions du README - Poetry

* **Installation de poetry**

```bash
curl -sSL https://install.python-poetry.org | python3 -
```

Poetry s'installe bien, version 2.1.3.

* **Navigation vers le projet et installation des dépendances avec poetry**

```bash
cd /path/to/your/project
poetry install
```

L'installation des 66 dépendances arrive à terme sans erreur.

> Remarque: l'installation avec le fichier de requirements n'a pas été testée.

### 1er test d’exécution des notebooks

Je teste d’exécuter les notebooks en utilisant VScode. L'environnement virtuel créé par poetry n’apparaît pas dans les noyaux possibles, probablement car un noyau pour les notebooks n'y a pas été créé. De même avec l'utilisation de Jupyter directement (en le lançant en global ou via Poetry). J'ai essayé de fixer le problème et je peux bien créer une spec sur le noyau, mais alors j'ai une erreur d'une librairie qui n'est pas installée alors qu'elle est supposée y être. Au bout d'u certain temps, je décide d'essayer avec le requirements.txt, qui est plus proche de mon habitude/config classique.

### Suivi des instructions du README - requirements.txt

Je suis les instructions pour l'installation des dépendances avec un environnement virtuel via venv et avec le fichier _requirements.txt_. J'obtiens un environnement virtuel fonctionnel et toutes les bibliothèques s'installent correctement.

### Reproduction Figure 1 au complet - Notebook kravchuk-aligned-transform

Je teste l'exécution du notebook _kravchuk-aligned-transform_. J'ai l'erreur suivante à la 3ème cellule, levée par la fonction `tight_layout` de matplotlib depuis`display_signal`:

```bash
RuntimeError: Failed to process string with tex because latex could not be found
```

VScode était en fait ouvert dans une sand box et n'avait pas accès à la commande Latex, j'ai résolu l'erreur en ouvrant VScode directement depuis le terminal (erreur spécifique à mon installation et à mon IDE).

Ensuite, j'avais une erreur Latex pour le rendu. Cela est dû au fait que matplotlib s'appuie sur des dépendances particulières de Latex pour les rendus. En suivant cette résolution (https://github.com/matplotlib/matplotlib/issues/16911), j'ai mis à jour cm-super et installé texlive-type1cm et le rendu a fonctionné (erreur spécifique à mes installations de Latex).

> **À retenir :** le code utilise Latex avec matplotlib, ce qui requiert des dépendances extérieures à matplotlib et à Python, liées à Latex (cf. la documentation de matplotlib, [là](https://matplotlib.org/stable/users/explain/text/usetex.html) et [là](https://matplotlib.org/stable/install/dependencies.html#optional-dependencies)). Le README ne précise pas cet aspect là. **Je recommande donc sur l'issue, non pas de décrire qu'est-ce qui doit être fait car cela peut dépendre des configurations, mais de préciser que le code utilise matplotlib avec Latex et de renvoyer vers la documentation associée. Pas de modification de code particulière.**

Toutes les cellules du notebook s'exécutent correctement. L'auteur précise que la Figure 1 est reproduite pour la valeur snr = Inf et un signal de chirp, qui sont les valeurs par défaut du notebook. **Je retrouve bien les figures gauche et droite de la Figure 1. La figure du centre est affichée avec un axe des ordonnées sur $[-\pi, \pi]$, alors qu'elle est donnée sur $[0, 2\pi]$ dans l'article.** Je n'ai pas approfondi la lecture de l'article, mais je suppose que la transformée est périodique de période $2\pi$, car les figures montrent les mêmes motifs à $\pi$ près. **Je conclue donc que la Figure 1 est bien reproductible.**

### Mesures du temps de calcul et de la précision de la même façon que pour la génération de la Figure 3 - Notebook kravchuk-aligned-transform

Le temps de calcul de la transformation de p-Kravchuk originale est de 1,77s contre 0,1s pour la nouvelle, pour $N=256$. Cela correspond bien aux 2 temps donnés pour ce N sur la figure du haut de la Figure 3. La dernière cellule donne bien une précision pour reproduire le graphe du bas, mais la précision de calcul affichée ne permet pas de voir la partie intéressant de l'erreur qui est entre $10^{-15}$ et $10^{-13}$ d'après le graphe. En changeant le nombre de décimales afficher, j'observe les bons ordres de grandeur.

En revanche, le notebook ne permet pas de générer des signaux aléatoires, ce qui ne permet pas de confirmer ou non la moyenne affichée sur le graphique sur 100 réalisations. Il est aussi mentionné des intervalles de confiances à 95% dans la légende, mais qui n'apparaissent pas dans le graphique. De plus, le notebook (ou le readme) ne précisent pas comment tester d'autres signaux que le _chirp_, comme le sinus et le Dirac mentionnés sur le graphe. Je constate que l'on peut tout de même retrouver l'utilisation de ces autres signaux dans le notebook _kravchuk-elementary-signals_.

**La méthode de calcul des points de la figure 3 apparait bien explicitement dans le notebook, mais tous les paramètres pour reproduire les résultats de la figure ne sont pas mis à disposition (_seed_ et fonctions des autres types de signaux).

### Reproduction Figure 4 au complet - Notebook kravchuk-elementary-signals

Ce notebook propose de calculer la transformée de Kravchuk de différents signaux élémentaires. On retrouve bien les différents signaux et leur transformée comme illustré Figure 4 de l'article.

### Reproduction Figure 5 au complet - Notebook kravchuk-bat-signal

Ce notebook propose de calculer la transformée de Kravchuk d'un cri de chauve-souris issu d'un fichier wav. On retrouve bien le signal, sa transformée de Kravchuk et sa STFT comme illustré Figure 5 de l'article.

### Premier bilan de la procédure

1. Le fichier README ne contient pas la(les) version(s) de Python, Poetry et/ou venv utilisée(s).
1. Il peut être intéressant de renvoyer vers la doc de Latex pour matplotlib dans le README.
1. Reproduction de la Figure 1 au complet : **ok**, à la différence que l'on affiche pas la même partie du signal que dans l'article, ce qui semble ne pas être différent dû à une propriété de périodicité du signal.
1. Mesures qui montrent comment a été produit la Figure 3 : **partiellement ok**, car on peut en effet retrouver certains points des figures, mais il n'est pas indiqué comment rendre aléatoire les réalisations et quelles fonctions utiliser pour réaliser des signaux de Dirac et sinus. Remarque : la légende de la figure 3 promet des intervalles de confiance qui n'apparaissent au final pas sur la figure. Proposition de modification : donner la possibilité de modifier la _seed_, indiquer les fonctions des autres signaux, modifier la précision de l'affichage de l'erreur de la dernière cellule.
1. Reproduction de la Figure 4 au complet : **parfait**.
1. Reproduction de la Figure 5 au complet : **parfait**.

### Communication avec les auteurs

Les modifications suivantes ont été proposées aux auteurs, et ont été toutes traitées par les auteurs puis vérifiées :

* *[x]  Préciser les versions de Python, Poetry et venv utilisées ;
* *[x]  Préciser que les rendus sont fait en utilisant Latex et quelques dépendances particulières, et envoyer l'utilisateur vers la documentation correspondante de matplotlib ;
* *[x]  Modifier l'axe des ordonnées de la Figure 1 dans le notebook ou l'article (sachant que toutes les autres figures correspondent plutôt au $[-\pi, \pi]$ du notebook) ;
* *[x]  Modifier le nombre de décimales affichéesdans la dernière cellule de kravchuk-aligned-transform pour pouvoir effectivement observer les différences d'ordre de grandeur d'erreur ;
* *[x]  Permettre de modifier la seed dans le notebook kravchuk-aligned-transform ;
* *[x]  Permettre de modifier le type de signal dans le notebook kravchuk-aligned-transform ;
* *[ ]  Revoir la légende et/ou la figure de l'article pour qu'il y ait une cohérence sur la présence ou non d'intervalles de confiance. **À modifier dans le manuscrit au retour des expertises GRETSI.**

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

1. **Temps de compilation** constaté : Non concerné
2. **Temps d'exécution** constaté : quelques secondes
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
