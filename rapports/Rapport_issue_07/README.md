# GRETSI'25 - Label Reproductible - Rapport de l'issue #07

![](../../img/label_argent.png)

Code testé par Patrick BARD.

## Infos du dépôt

* ID de l'article : 1422
* Titre de l'article : Différence polarimétrique et angulaire d’image appliqué à imagerie à haut contraste des environnements circumstellaire
* URL du dépôt git du code : [https://github.com/SpottedBush/PADI](https://github.com/SpottedBush/PADI)
* Langage(s) : Julia, Python

## Configuration utilisée par le reviewer

Pour Julia

* OS (nom et version) : CentOS_Intel64_7.7
* Processeur
  * Nom : 13th Gen Intel(R) Core(TM) i9-13900H   2.60 GHz
  * Nombre de cœurs : 24
* Carte graphique
  * Nom : 2 GPU Tesla V100
  * Mémoire dédiée : 2 x 32 GB
* Taille de la RAM : 192 Go

Pour Python

* OS (nom et version) : Windows 11 Professionnel
* Processeur
  * Nom : Intel Xeon Gold 6240 @ 2.50GHz
  * Nombre de cœurs : 14
* Carte graphique
  * Nom : 4091 MoNVIDIA RTX 2000 Ada Generation Laptop GPU (Dell)
  * Mémoire dédiée : 4091 Mo
* Taille de la RAM : 32 Go

## A - État initial avant review

1. **Toutes les infos** de l'issue étaient exactes :
   * [ ] Oui
   * [X] Non
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

Nécessité d'avoir un compte et de faire une demande préalable d'autorisation d'accès sous Google Drive

## B - Procédure suivie pendant la review

* Consultation de [https://github.com/GRETSI-2025/Label-Reproductible/issues/7](https://github.com/GRETSI-2025/Label-Reproductible/issues/7)
* Consultation de [https://drive.google.com/drive/folders/1RcNd5Qh6XD2Trd07VGPWqlphMU699PFi?usp=drive_link](https://drive.google.com/drive/folders/1RcNd5Qh6XD2Trd07VGPWqlphMU699PFi?usp=drive_link)
* Demande d'accès
* Obtention d'accès en quelques minutes
* Passage sur la machine Linux
* Téléchargement des données nécessaires pour reproduire les résultats et des éléments à reproduire à partir du site précédent après obtention de l'accès
* Consultation de [https://github.com/SpottedBush/PADI](https://github.com/SpottedBush/PADI)
* Récupération du dépôt Git. Deux méthodes testées et fonctionnelles :
  * HTTPS : `git clone https://github.com/SpottedBush/PADI.git`
  * SSH : `git clone https://github.com/SpottedBush/PADI.git`
    Dans ce cas, il faut définir une clef SSH sous la machine cible, avoir un compte sous GitHub et enregistrer la clef SSH sous ce compte GitHub
* Installation des packages Julia à partir du dépôt Git récupéré à l'étape précédente :
  * julia
  * cd("Path\\to\\PADI")
  * ]
  * activate .
  * precompile
  * <backspace> / <Ctrl-C>
* Exécution
  * include("Path\\to\\file")
* Sortie de julia :
  * exit()
* Passage sur la machine Windows
* Récupération du dossier PADI sous Linux
* Creation et activation d'un environnement virtuel Python avec conda
* Installation des modules avec PiP et le fichier "requirements.txt" fourni
* Lancement de Visual Studio Code
* Chargement du notebook "src/metrics.ipynb"
* Choix du kernel
* Execution du notebook

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
  * [X] Oui, tous
  * [ ] Oui, en grande partie
  * [ ] Non, il manque des éléments essentiels

Commentaires éventuels :

### _2 - Reproductibilité_

1. **Temps de compilation** constaté : De l'ordre de la minutes
2. **Temps d'exécution** constaté : De l'ordre de quelques minutes pour les cas simples
3. Le code **compile** :
   * [X] sans erreur
   * [ ] avec des erreurs
   * [ ] non concerné
4. Le code s'**exécute** :
   * [X] sans erreur
   * [ ] avec des erreurs
5. Si le code s'exécute **sans erreur**, cela s'est fait :
   * [ ] sans modifications du code initialement soumis
   * [X] avec quelques changements mineurs du code initialement soumis
   * [ ] avec des changements importants du code initialement soumis
6. Les **résultats attendus** sont obtenus :
   * [ ] toujours
   * [X] parfois
   * [ ] jamais
7. Les **résultats obtenus** correspondent à ceux indiqués par les auteurs dans leur papier :
   * [X] exactement
   * [ ] avec quelques différences négligeables
   * [ ] avec quelques différences notables
   * [ ] avec beaucoup de différences

Commentaires éventuels :

La comparaison a été faite non par un moyen automatique, mais par un humain, en outre non spécialiste de ce type d'image.

## Résultat

En tant que reviewer, **j'estime** qu'à la fin de ma review, **le dépôt de l'auteur permet de reproduire les résultats annoncés** :

* [ ] Oui, tous
* [X] Oui, avec quelques réserves
* [ ] Non

Commentaires éventuels :

"RHAPSODIE.fits" ne peut être repliqué mais sert pour produire les figures de l'article.
