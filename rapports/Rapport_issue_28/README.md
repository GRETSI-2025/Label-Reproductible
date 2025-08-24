# GRETSI'25 - Label Reproductible - Rapport de l'issue #28

![](../../img/label_argent.png)

Code testé par Quentin SAINT-CHRISTOPHE.

## Infos du dépôt

* ID de l'article : 1701
* Titre de l'article : Comment spécialiser DINOv2 pour l’astronomie ?
* URL du dépôt git du code : [https://github.com/matthieulel/finetune_dinov2_astronomy.git](https://github.com/matthieulel/finetune_dinov2_astronomy.git)
* Langage(s) : Python 3

## Configuration utilisée par le reviewer

* OS (nom et version) : Microsoft Windows 11 Entreprise
* Processeur
  * Nom : 13th Gen Intel(R) Core(TM) i5-13600H, 2800 MHz
  * Nombre de cœurs : 12 cœurs, 16 processeurs logiques
* Carte graphique
  * Nom : NVIDIA RTX A500 Laptop GPU
  * Mémoire dédiée : 128 Mb
* Taille de la RAM : 16 Gb

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

Un script a été lancé contenant les instructions suivantes en super-utilisateur.
Afin de récupérer le git en local :

```bash
git clone https://github.com/matthieulel/finetune_dinov2_astronomy.git.
```

* Se placer dans le dossier local : `cd /finetune_dinov2_astronomy`.
* Création d’un environnement virtuel sous python (3.12) : `python3 -m venv envdinov2 && source envdinov2/bin/activate ;`
* Toutes les dépendances ont aisément été tirées du fichier requirements.txt via `pip install -r requirements.txt`.

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

1. **Temps de compilation** constaté :
2. **Temps d'exécution** constaté :
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
