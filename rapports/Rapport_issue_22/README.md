# GRETSI'25 - Label Reproductible - Rapport de l'issue #22

Code testé par Thomas FILLON.

## Infos du dépôt

* ID de l'article : 1468
* Titre de l'article : Graphes de Programmes Intriqués Appliqués à la Prédiction de Trajectoire de Bras Robotique
* URL du dépôt git du code : [https://github.com/gegelati/GRETSI2025-Artifacts](https://github.com/gegelati/GRETSI2025-Artifacts)
* Langage(s) : C++

## Configuration utilisée par le reviewer

* OS (nom et version) : Ubunty 22.04
* Processeur
  * Nom : 2 x Intel Xeon Gold 6430
  * Nombre de cœurs : 2 x 32
* Carte graphique
  * Nom :
  * Mémoire dédiée :
* Taille de la RAM : 128 Go

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
   * [ ] Oui, toutes
   * [x] Oui, en grande partie
   * [ ] Non, il manquait des données essentielles
5. Les **éléments à reproduire** étaient accessibles :
   * [ ] Oui, tous
   * [x] Oui, en grande partie
   * [ ] Non, il manquait des éléments essentiels

Commentaires éventuels :

## B - Procédure suivie pendant la review

L'exécution du code requiert une machine avec un nombre important de coeurs. L'auteur suggérait 128 coeurs pour 2h d'exécution mais indiquait comment procéder pour exécuter le programme d'entraînement sur moins de coeurs. J'ai ainsi pu paramétrer le programme pour s'exécuter en 4h sur un ordinateur disposant de 64 coeurs.

Étant donné cette contrainte, j'ai dû accéder à une machine d'une grille de calcul suffisament puissante pour exécuter le code.
La compilation du code nécessitait l'installation de librairie et de paquets système spécifiques. N'ayant pas la possibilité de le faire directement sur la machine hôte pour des problèmes de permission, j'ai utilisé un conteneur Apptainer.

Un premier essai d'installation des dépendances a mis en exergue le fait que les instructions et scripts d'installation impliquaient que l'OS hôte soit Ubuntu version 22.04 sans que cela soit précisé dans le README.
Après un premier échange, l'auteur a complété le README et a ajouté des fichiers de paramètres pour permettre une éxécution via un conteneur Apptainer/Singularity.

L'auteur a également corrigé une erreur de code qui empêchait la bonne éxécution sur ma machine.

Au final, le code tourne et produit les résultats de l'article. Une erreur finale se produit néanmoins lors de la sauveagarde des résultats mais n'empêche pas de visualiser que ceux-ci sont corrects. L'erreur est peut-être une conséquence du fait d'avoir dû exécuter le code dans un conteneur.

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
  * [ ] Oui, toutes
  * [x] Oui, en grande partie
  * [ ] Pas encore, elles le seront si l'article est accepté et le label décerné
  * [ ] Non, il manque des données essentielles qui ne pourront pas être rendues publiques
* Les **éléments à reproduire** sont accessibles :
  * [ ] Oui, tous
  * [x] Oui, en grande partie
  * [ ] Non, il manque des éléments essentiels

Commentaires éventuels : 

### _2 - Reproductibilité_

1. **Temps de compilation** constaté :  5 min
2. **Temps d'exécution** constaté : 4h
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
   * [x] avec quelques différences négligeables
   * [ ] avec quelques différences notables
   * [ ] avec beaucoup de différences

Commentaires éventuels :

Comme précisé plus haut, une erreur finale se produit en toute fin d'éxécution lors de la sauvegarde des données mais elle n'empêche pas de vérifier les résultats du code et la conformité par rapport au papier.

## Résultat

En tant que reviewer, **j'estime** qu'à la fin de ma review, **le dépôt de l'auteur permet de reproduire les résultats annoncés** :

* [ ] Oui, tous
* [x] Oui, avec quelques réserves
* [ ] Non

Commentaires éventuels :
