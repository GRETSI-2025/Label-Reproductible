# GRETSI'25 - Label Reproductible - Rapport de l'issue #23

![](../../img/label_or.png)

Code testé par Jérémy COHEN.

## Infos du dépôt

* ID de l'article : 1546
* Titre de l'article : Évaluation des générateurs d’images à partir de peu d’exemples : calculer le FID avec 10 fois moins d’images, c’est possible
* URL du dépôt git du code : [https://github.com/nshaud/rmtfid](https://github.com/nshaud/rmtfid)
* Langage(s) : Python

## Configuration utilisée par le reviewer

* OS (nom et version) : Fedora 39
* Processeur
  * Nom : 11th Gen Intel® Core™ i7-11850H × 16
  * Nombre de cœurs : 16
* Carte graphique
  * Nom : NVIDIA T1200 Laptop GPU
  * Mémoire dédiée :
* Taille de la RAM : 32GiB

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
   * [X] Oui, toutes
   * [ ] Oui, en grande partie
   * [ ] Non, il manquait des données essentielles
5. Les **éléments à reproduire** étaient accessibles :
   * [X] Oui, tous
   * [ ] Oui, en grande partie
   * [ ] Non, il manquait des éléments essentiels

Commentaires éventuels :

Les données sont partagées sur un dépot perso; il me paraitrait plus intéressant de les déposer sur une plateforme open et pérène type Zenodo. De plus, je déconseille de partager CIFAR10 pour lequel il existe des loaders spécifiques (qui sont donnés dans le code, je n'ai pas testé).
La version de python dans l'installation est proposée comme >=6, mais avec la version 3.12.7 j'ai eu une incompatibilité avec seaborn, mais c'est optionnel de toutes facons (et les figures sont peut-être même plus jolies en pur matplotlib !). Je n'ai pas testé avec python v6. J'ai suggéré de supporter uniquement python==3.13 pour lequel il n'y a pas de soucis.
Expliciter l'arborescence de fichier supposée des données... sinon on passe du temps à tatonner sur ce que les auteurs attendent (les données étant à télécharger indépendamment et zippées à plusieurs reprises sans la bonne arborescence de fichier)

## B - Procédure suivie pendant la review

1. Installation d´un environement virtuel avec mamba, et `pip install -r requirements.txt`
2. Installation à la main de jupyter notebook.
3. Ouverture du code dans jupyter notebook
4. Téléchargement des données
5. Enlever du code la dépendance en seaborn qui est en conflict de version
6. Un peu de triturage à la main pour mettre les données téléchargées dans la bonne arborescence de fichier
7. Le code s'execute cellule par celulle sans soucis :)

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

1. **Temps de compilation** constaté : 0
2. **Temps d'exécution** constaté : ~30min
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

Les principaux soucis ont été réglé lors de la discussion avec les auteurs sur l'issue github.
