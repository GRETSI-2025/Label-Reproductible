# GRETSI'25 - Label Reproductible - Rapport de l'issue #27

![](../../img/label_or.png)

Code testé par Jiahui Wei.

## Infos du dépôt

* ID de l'article : 1697
* Titre de l'article : Sigcor – un paquet Python pour le calcul de seuils de coefficients de corrélation significatifs pour des petits et grands échantillons
* URL du dépôt git du code : [https://github.com/gjpcbecq/gretsi_2025_sigcor](https://github.com/gjpcbecq/gretsi_2025_sigcor)
* Langage(s) : Anglais

## Configuration utilisée par le reviewer

* OS (nom et version) : MacOS 15.5
* Processeur
  * Nom : Apple M4 Pro
  * Nombre de cœurs : 12
* Carte graphique
  * Nom : Apple M4 Pro (Build-in Bus)
  * Mémoire dédiée :
* Taille de la RAM : 24 GB

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

Le dépôt initial était bien préparé, public, avec un README clair et toutes les données nécessaires disponibles. Aucun obstacle majeur rencontré à ce stade.

## B - Procédure suivie pendant la review

```bash
git clone https://github.com/gjpcbecq/sigcor.git
cd sigcor
pip3 install .
cd ..
git clone https://github.com/gjpcbecq/gretsi_2025_sigcor.git
cd gretsi_2025_sigcor
jupyter notebook
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

Le dépôt Git est clair, avec une structure organisée. Le README est court mais contient les informations essentielles pour démarrer. Quelques améliorations possibles : inclure un fichier requirements.txt pour figer les versions des dépendances, et indiquer explicitement les prérequis (par exemple l’installation de Jupyter).

### _2 - Reproductibilité_

1. **Temps de compilation** constaté : <10s
2. **Temps d'exécution** constaté : < 1min en total
3. Le code **compile** :
   * [x] sans erreur
   * [ ] avec des erreurs
   * [ ] non concerné
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

Le code compile et s’exécute sans erreur dès la première tentative, sans nécessiter de modification. Les résultats obtenus correspondent exactement à ceux annoncés dans l’article. Le temps de compilation et d’exécution est raisonnable. L’expérience globale de reproductibilité est fluide et bien encadrée.

## Résultat

En tant que reviewer, **j'estime** qu'à la fin de ma review, **le dépôt de l'auteur permet de reproduire les résultats annoncés** :

* [x] Oui, tous
* [ ] Oui, avec quelques réserves
* [ ] Non

Commentaires éventuels :

Les figures et résultats présentés dans l’article sont reproductibles à partir des notebooks fournis. Pour garantir la pérennité du projet, il serait utile d’ajouter des informations sur les versions des packages utilisés. Globalement, le dépôt est bien reproductible.
