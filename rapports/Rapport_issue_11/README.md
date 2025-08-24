# GRETSI'25 - Label Reproductible - Rapport de l'issue #11

![](../../img/label_argent.png)

Code testé par Raphaël LE BIDAN.

## Infos du dépôt

* ID de l'article : 1718
* Titre de l'article : Diversification des Données pour l’Identification d’Empreinte RF
* URL du dépôt git du code : [https://github.com/achilletIrisa/Diversification-des-Donnees-pour-l-Identification-d-Empreinte-RF](https://github.com/achilletIrisa/Diversification-des-Donnees-pour-l-Identification-d-Empreinte-RF)
* Langage(s) : Julia

## Configuration utilisée par le reviewer

* OS (nom et version) : Ubuntu 24.04.2 LTS (GNU/Linux 6.8.0-51-generic x86_64)
* Processeur
  * Nom : AMD EPYC 9224
  * Nombre de cœurs : 24 coeurs physiques
* Carte graphique
  * Nom : NVIDIA H100
  * Mémoire dédiée : 96GB
* Taille de la RAM : 512G

## A - État initial avant review

1. **Toutes les infos** de l'issue étaient exactes :
   * [ ] Oui
   * [X] Non
2. Le dépôt était **public** dès le départ :
   * [ ] Oui
   * [X] Non
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
   * [X] Non, il manquait des éléments essentiels

Commentaires éventuels :

Le [dépôt initialement indiqué dans l'issue](https://github.com/JuliaTelecom/Rifyfi.jl) n'était pas le bon. Le tutorial et les données disponibles dans ce dépôt ne permettaient donc pas de reproduire les éléments de l'article indiqués dans l'issue.

Le lien sur le dépôt a été corrigé un peu plus tard, mais le nouveau dépôt n'était pas en accès public. Le problème d'accès a été corrigé après que je l'ai signalé.

## B - Procédure suivie pendant la review

Un fois corrigé le problème de lien et d'accès au bon dépôt, j'ai suivi exactement les instructions proposées pour reproduire le premier élément (Figure 1 de l'article):

* Installation de Julia 1.8.5 (version recommandée par l'autrice), ici par juliaup
* Récupération du projet `git clone https://github.com/achilletIrisa/Diversification-des-Donnees-pour-l-Identification-d-Empreinte-RF.git`
* Déplacement dans le répertoire `Diversification-des-Donnees-pour-l-Identification-d-Empreinte-RF`
* Lancement du REPL Julia 1.8.5 dans ce répertoire
* Activation du package par `pkg> activate .` dans le mode gestionnaire de paquets Julia
* Exécution du script indiqué par: `julia> include("Fig1.jl")`

J'ai constaté plusieurs problèmes et incohérences à l'exécution de ce premier script, a priori résolus (voir plus bas)

J'ai également suivi les instructions pour reproduire les deux autres éléments proposés (parties des Tables 3 et 4):

* Téléchargement des fichiers nécessaires par l'exécution du script Shell `bash Load_CSV_File.sh`
* Exécution du script indiqué par: `julia> include("Fig3.jl")`

Les fichiers de données ont bien été téléchargés, mais l'exécution du script provoquait une erreur. Après signalement du problème, un correctif a été appliqué aux données ainsi qu'au script, qui règle le problème rencontré.

## C - Bilan

### _1 - État du dépôt Git_

* Le dépôt est **public** :
  * [X] Oui
  * [ ] Non
* Il y a un **README** avec des instructions pour compiler/exécuter le code :
  * [X] Oui, et elles sont exhaustives
  * [ ] Oui, avec quelques détails mineurs qui manquent
  * [ ] Oui, avec des informations importantes qui manquent
  * [ ] Non
* Les **données** nécessaires pour reproduire les résultats sont disponibles publiquement :
  * [X] Oui, toutes
  * [ ] Oui, en grande partie
  * [ ] Pas encore, elles le seront si l'article est accepté et le label décerné
  * [ ] Non, il manque des données essentielles qui ne pourront pas être rendues publiques
* Les **éléments à reproduire** sont accessibles :
  * [ ] Oui, tous
  * [X] Oui, en grande partie
  * [ ] Non, il manque des éléments essentiels

Commentaires éventuels :

Sur la question de l'accessibilité aux éléments à reproduire, il manque simplement une reproduction de la Figure 1 dans le `readme.md` du dépôt, qui montrerait ce que l'on doit obtenir précisément, à l'image de ce qui est proposé pour la reproduction partielle des Tables 3 et 4. Je l'ai signalé à l'autrice pour qu'elle rajoute l'image de cette figure.

### _2 - Reproductibilité_

1. **Temps de compilation** constaté : 5' (conforme à ce qui annoncé)
2. **Temps d'exécution** constaté : 125h au lieu des 20h annoncées ! (et sur un GPU plus puissant !)
3. Le code **compile** :
   * [X] sans erreur
   * [ ] avec des erreurs
   * [ ] non concerné
4. Le code s'**exécute** :
   * [ ] sans erreur
   * [X] avec des erreurs
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
   * [ ] avec quelques différences négligeables
   * [X] avec quelques différences notables
   * [ ] avec beaucoup de différences

Commentaires éventuels :

A l'exécution du premier script `Fig1.jl`, j'ai constaté deux problèmes:

* Le script n'avait pas été complètement testé par l'autrice, par manque de temps, et contenait malheureusement plusieurs petites erreurs silencieuses qui faisaient qu'une partie des données générées étaient ensuite écrasées par des données plus récentes, empêchant la reproduction des résultats attendus
* Le temps d'exécution mesuré avec un GPU plus puissant que celui utilisé par l'autrice s'est avéré 6x plus long qu'annoncé dans l'issue (125h de calcul effectives contre 20h annoncées !)

J'ai repéré et corrigé les erreurs causant l'écrasement des données, ce qui m'a permis d'obtenir des résultats très proches de ceux de la Figure 1 de l'article, sans être toutefois complètement identiques. J'ai transmis le script corrigé à l'autrice en lui demandant de valider ces corrections et les résultats observés, ou bien alors de corriger/modifier ce qui doit l'être. Cette validation est toujours en cours.

D'autre part l'écart entre le temps de calcul effectif et celui annoncé semble être dû à une estimation initiale un peu trop au doigt mouillé. J'ai demandé à l'autrice de donner des chiffres plus réalistes dans son readme.

Concernant la reproduction des deux autres éléments (Tables 3 et 4), j'ai rencontré un certain nombre d'erreurs avec le script de téléchargement, les données téléchargées, et aussi le script Julia de reproduction des résultats. Plusieurs échanges avec l'autrice ont finalement permis de corriger tous ces problèmes.

## Résultat

En tant que reviewer, **j'estime** qu'à la fin de ma review, **le dépôt de l'auteur permet de reproduire les résultats annoncés** :

* [X] Oui, tous
* [ ] Oui, avec quelques réserves
* [ ] Non

Commentaires éventuels :

Avec mes corrections sur le premier script, je suis bien en mesure de reproduire des résultats proches de ceux de la Figure 1 de l'article, mais avec quelques différences numériques visibles. Pour autant la tendance des courbes est la même. Je considère donc la reproduction de cette figure comme validée.

Les correctifs apportés sur le second script et les données associés m'ont permis là aussi de reproduire les tables attendues. Ici aussi les valeurs numériques obtenues diffèrent un peu de celles données en exemple mais restent suffisamment proches pour valider la reproductibilité.
