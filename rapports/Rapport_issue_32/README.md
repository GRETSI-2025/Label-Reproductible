# GRETSI'25 - Label Reproductible - Rapport de l'issue #32

![](../../img/label_argent.png)

Code testé par Nicolas AUDEBERT.

## Infos du dépôt

* ID de l'article : 1493
* Titre de l'article : Prédiction des instants de changement de percept dans un modèle de perception mutlistable
* URL du dépôt git du code : [https://github.com/massylmoudoud/Vision-3E_Gretsi2025](https://github.com/massylmoudoud/Vision-3E_Gretsi2025)
* Langage(s) : Python

## Configuration utilisée par le reviewer

* OS (nom et version) : ArchLinux (kernel 6.13.4)
* Processeur
  * Nom : AMD Ryzen 7 3800X
  * Nombre de cœurs : 8
* Carte graphique
  * Nom : pas utilisée
  * Mémoire dédiée : pas utilisée
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
   * [x] Oui, tous
   * [ ] Oui, en grande partie
   * [ ] Non, il manquait des éléments essentiels

Commentaires éventuels :

J'ai adapté les instructions du README qui proposent d'utiliser (mini)conda alors que ce n'est pas nécessaire (un simple environnement virtuel Python fonctionne parfaitement). Les versions des dépendances sont fixées très précisément ce qui contraint à utiliser une version de Python assez spécifique (3.11.11) mais cela a fonctionné en adaptant les versions des dépendances à Python 3.13.

## B - Procédure suivie pendant la review

```bash
git clone https://github.com/massylmoudoud/Vision-3E_Gretsi2025
cd Vision-3E_Gretsi2025
python -m venv .venv
source ~/.venv/bin/activate
pip install -r requirements.txt
jupyter notebook Code_paper_Gretsi2025_Bayesian_Modeling_of_percept_Change.ipynb
```

puis exécution de toutes les cellules.

## C - Bilan

### _1 - État du dépôt Git_

* Le dépôt est **public** :
  * [X] Oui
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

1. **Temps de compilation** constaté : négligeable
2. **Temps d'exécution** constaté : ~10 minutes
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
   * [ ] exactement
   * [x] avec quelques différences négligeables
   * [ ] avec quelques différences notables
   * [ ] avec beaucoup de différences

Commentaires éventuels :

Il y a quelques légères différences qui viennent du fait que la graine du générateur pseudo-aléatoire de NumPy n'a pas été fixée. Cela ne change pas beaucoup les figures mais ajoute un peu de stochasticité et réduit la reproducibilité strictre des figures.

## Résultat

En tant que reviewer, **j'estime** qu'à la fin de ma review, **le dépôt de l'auteur permet de reproduire les résultats annoncés** :

* [x] Oui, tous
* [ ] Oui, avec quelques réserves
* [ ] Non

Commentaires éventuels : les instructions étaient très claires. Le notebook est un peu opaque (même si le code est commenté, ce n'est pas facile de bien saisir tous les tenants et aboutissants de chaque cellule), en revanche les figures sont bien reproduites et c'est le principal.
