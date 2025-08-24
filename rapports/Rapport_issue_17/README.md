# GRETSI'25 - Label Reproductible - Rapport de l'issue #17

![](../../img/label_argent.png)

Code testé par Laurence DENNEULIN.

## Infos du dépôt

* ID de l'article : 1584
* Titre de l'article : Degree-corrected block model : une nouvelle approche et une initialisation efficace pour l’inférence
* URL du dépôt git du code : [https://github.com/Alexia1305/DCBM_OtrisymNMF](https://github.com/Alexia1305/DCBM_OtrisymNMF)
* Langage(s) : Python

## Configuration utilisée par le reviewer

* OS (nom et version) : Linux Mint 21.3 Cinnamon
* Processeur
  * Nom : Intel© Core™ i7-6700HQ
  * Nombre de cœurs : 4
* Carte graphique
  * Nom : NVIDIA GeForce GTX 960M
  * Mémoire dédiée : 2048 MB
* Taille de la RAM : 31.2 Go

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

J'ai suivit à la lettre les indications du README :

* j'ai tout d'abord cloné le dépot git,
* j'ai ensuite créé et activé un environnement virtuel python3.9 avec conda,
* j'ai installé les dépendances, via le fichier présent dans le dépôt

```bash
pip3 install -r requirements.txt
```

* j'ai eu des soucis avec l'installation de la dépendance pywin32, mais en itérant avec l'auteur, cela a été réglé rapidement.
* j'ai ouvert le notebook jupter et exécuté les cellules afin d'obtenir le résultat de la figure 3. 
* J'ai exécuté les scripts de benchmark avec les commandes suivantes : 

```bash
time python LFR_benchmark.py
time python Scotland_test.py
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

### _2 - Reproductibilité_

1. **Temps de compilation** constaté : <1s
2. **Temps d'exécution** constaté :
   * Notebook jupyter <1s,
   * Scotland_test.py : 5min30 ±20s par exécution,
   * LFR_benchmark.py :  169m25,173s pour un hyperparamètre donc plus de * Total : 28h
3. Le code **compile** :
   * [x] sans erreur
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
   * [ ] exactement
   * [X] avec quelques différences négligeables
   * [ ] avec quelques différences notables
   * [ ] avec beaucoup de différences

Commentaires éventuels :

Pour la figure 3, les couleurs bleu et rouge sont inversées mais c'est négligeable. Vis-à-vis des résultats sur le Scotland corporate interlock network, en premier lieu le NMI moyen obtenu était un tout petit peu différent mais cohérant par rapport l'écart-type donné dans l'article: (22 ± 21)% pour KL_EM (contre (17±21)% dans le papier) et (21±40)% pour OtrisymNMF (contre (28±42)%  dans le papier).  La méthode étant peu stable, j'ai échangé avec l'auteure pour savoir combien d'essaie faisait le script. Elle l'a alors modifié pour qu'il réalise bien 100 tests et 5 essaie (le script faisait 10 essais). De plus elle a fixé la graine, permettant d'obtenir les mêmes résultats que ceux présentés dans l'issue, légèrement différents de ceux du papier pour l'initialisation aléatoire mais ne changeant pas, d'après elle, les conclusion du papier. Les résultats sont par ailleurs bien plus stables et identiques avec les intialisations SVCA.

## Résultat

En tant que reviewer, **j'estime** qu'à la fin de ma review, **le dépôt de l'auteur permet de reproduire les résultats annoncés** :

* [ ] Oui, tous
* [x] Oui, avec quelques réserves
* [ ] Non

Commentaires éventuels :

D'après moi, il faut soit faire plus d'essais et de tests dans le cas de l'initialisation aléatoire pour régler les problèmes d'instabilité, soit mentionner rapidement dans le papier cette instabilité en fonction de l'initalisation (là où à l'inverse les initialisations SVCA sont stables).
