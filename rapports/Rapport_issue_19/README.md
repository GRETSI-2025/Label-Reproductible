# GRETSI'25 - Label Reproductible - Rapport de l'issue #19

![](../../img/label_or.png)

Code testé par Mathieu FAUVEL.

## Infos du dépôt

* ID de l'article : 1605
* Titre de l'article : On the Impact of Data Collection Strategies in Streaming Federated Learning with Markovian Data
* URL du dépôt git du code : [https://github.com/khiem2105/GRETSI_2025](https://github.com/khiem2105/GRETSI_2025)
* Langage(s) : Python / Anglais

## Configuration utilisée par le reviewer

* OS (nom et version) : rhel centos fedora 9.5 - Rocky Linux 9.5 (Blue Onyx)
* Processeur
  * Nom : Intel(R) Xeon(R) Gold 6136 CPU @ 3.00GHz
  * Nombre de cœurs : 48
* Carte graphique
  * Nom : Tesla V100-PCIE-32GB
  * Mémoire dédiée : 32 Gb
* Taille de la RAM : 20 Gb

## A - État initial avant review

1. **Toutes les infos** de l'issue étaient exactes :
   * [X] Oui
   * [ ] Non
2. Le dépôt était **public** dès le départ :
   * [ ] Oui
   * [X] Non
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

Après avoir demandé le passage en mode public du dépot, j'ai pu cloner le dépot.

## B - Procédure suivie pendant la review

Voici les commandes que j'ai lancer pour reproduire les résultats:

```bash
conda create --name gresti2025 python=3.11
conda activate gretsi2025
conda install numpy=2.2.5 matplotlib=3.10.3 scipy=1.15.2 seaborn=0.13.2 tqdm=4.67.1
nohup python main.py > out_python &
python plot_paper.py
```

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
  * [X] Oui, toutes
  * [ ] Oui, en grande partie
  * [ ] Pas encore, elles le seront si l'article est accepté et le label décerné
  * [ ] Non, il manque des données essentielles qui ne pourront pas être rendues publiques
* Les **éléments à reproduire** sont accessibles :
  * [X] Oui, tous
  * [ ] Oui, en grande partie
  * [ ] Non, il manque des éléments essentiels

Commentaires éventuels :

### _2 - Reproductibilité_

1. **Temps de compilation** constaté : Pas de temps de compilation
2. **Temps d'exécution** constaté : Moins d'une heure.
3. Le code **compile** :
   * [ ] sans erreur
   * [ ] avec des erreurs
   * [ ] non concerné
4. Le code s'**exécute** :
   * [X] sans erreur
   * [ ] avec des erreurs
5. Si le code s'exécute **sans erreur**, cela s'est fait :
   * [X] sans modifications du code initialement soumis
   * [ ] avec quelques changements mineurs du code initialement soumis
   * [ ] avec des changements importants du code initialement soumis
6. Les **résultats attendus** sont obtenus :
   * [X] toujours
   * [ ] parfois
   * [ ] jamais
7. Les **résultats obtenus** correspondent à ceux indiqués par les auteurs dans leur papier :
   * [X] exactement
   * [ ] avec quelques différences négligeables
   * [ ] avec quelques différences notables
   * [ ] avec beaucoup de différences

Commentaires éventuels :

Les résultats sont sous forme de figure: elles se ressemblent fortement, entre celles produites dans les simulations et celles incluses dans le papier, mais à l'oeil c'est difficile à vérifier. Ce serait plus facile avec des résultats numériques (mais moins pratiques à mettre dans un papier j'en conviens.)

## Résultat

En tant que reviewer, **j'estime** qu'à la fin de ma review, **le dépôt de l'auteur permet de reproduire les résultats annoncés** :

* [X] Oui, tous
* [ ] Oui, avec quelques réserves
* [ ] Non

Commentaires éventuels : Je propose à l'auteur de rajouter les commandes pour créer un environnement conda sous linux permettant de faire tourner le code python, même si les librairies sont standards, je pense qu'il est important de fixer les versions des bibliothèques pour reproduire les résultats.
