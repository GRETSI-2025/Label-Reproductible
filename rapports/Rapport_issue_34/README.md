# GRETSI'25 - Label Reproductible - Rapport de l'issue #34

Code testé par Simon RIT.

## Infos du dépôt

* ID de l'article : ID1453 
* Titre de l'article : Approche hybride pour l'inversion de la compression dynamique en traitement audio à l'aide de l'apprentissage profond
* URL du dépôt git du code : [https://github.com/SunHaoRanCN/Inversion-de-la-Compression-Dynamique](https://github.com/SunHaoRanCN/Inversion-de-la-Compression-Dynamique)
* Langage(s) : Python

## Configuration utilisée par le reviewer

* OS (nom et version) : Ubuntu 22.04.5 LTS
* Processeur
  * Nom : Intel® Core™ i9-13900H
  * Nombre de cœurs : 14
* Carte graphique
  * Nom : NVIDIA RTX 3000
  * Mémoire dédiée : 8 Go
* Taille de la RAM : 64 Go

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
   * [ ] Oui, en grande partie
   * [x] Non, il manquait des données essentielles
5. Les **éléments à reproduire** étaient accessibles :
   * [ ] Oui, tous
   * [ ] Oui, en grande partie
   * [x] Non, il manquait des éléments essentiels

Commentaires éventuels :

## B - Procédure suivie pendant la review

Le dépôt ne précisait pas comment configurer l'environnement. J'ai essayé de configurer l'environnement suivant :

```bash
conda create -n gretsi python=3.12
conda activate gretsi
pip install torch
pip install matplotlib
pip install soundfile
pip install librosa
pip install timm
pip install wget
pip install auraloss
pip install torchinfo

PYTHONPATH=$PWD/data:$PWD/models:$PWD/utiles
```

J'ai également dû renommer le fichier `utiles/utiles.py` pour qu'il n'y ait pas de confusion entre le nom du paquet et le nom du fichier. J'obtiens alors l'erreur

```bash
NameError: name 'snr_scheduler' is not defined. Did you mean: 'SNRScheduler'?
```

Si je remplace `snr_scheduler` par `SNRScheduler` j'obtiens

```bash
Traceback (most recent call last):
  File "/home/srit/documents/reviews/2025_gretsi/Inversion-de-la-Compression-Dynamique/classification.py", line 53, in <module>
    train_dataset = get_2D_dataset(train_folder, 
                    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/home/srit/documents/reviews/2025_gretsi/Inversion-de-la-Compression-Dynamique/data/AudioDataset.py", line 33, in __init__
    self.audio_list = self.find_paths()
                      ^^^^^^^^^^^^^^^^^
  File "/home/srit/documents/reviews/2025_gretsi/Inversion-de-la-Compression-Dynamique/data/AudioDataset.py", line 37, in find_paths
    for file_name in os.listdir(self.audio_folder):
                     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
FileNotFoundError: [Errno 2] No such file or directory: ' '
```

Je n'ai pas eu de réponse des auteurs à ces problèmes.

## C - Bilan

### _1 - État du dépôt Git_

* Le dépôt est **public** :
  * [x] Oui
  * [ ] Non
* Il y a un **README** avec des instructions pour compiler/exécuter le code :
  * [ ] Oui, et elles sont exhaustives
  * [ ] Oui, avec quelques détails mineurs qui manquent
  * [x] Oui, avec des informations importantes qui manquent
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

N'ayant pu exécuter le code, il semble que les données sont disponibles et les éléments à reproduire accessibles mais je ne peux pas le garantir.

### _2 - Reproductibilité_

1. **Temps de compilation** constaté :
2. **Temps d'exécution** constaté :
3. Le code **compile** :
   * [ ] sans erreur
   * [ ] avec des erreurs
   * [x] non concerné
4. Le code s'**exécute** :
   * [ ] sans erreur
   * [x] avec des erreurs
5. Si le code s'exécute **sans erreur**, cela s'est fait :
   * [ ] sans modifications du code initialement soumis
   * [ ] avec quelques changements mineurs du code initialement soumis
   * [ ] avec des changements importants du code initialement soumis
6. Les **résultats attendus** sont obtenus :
   * [ ] toujours
   * [ ] parfois
   * [ ] jamais
7. Les **résultats obtenus** correspondent à ceux indiqués par les auteurs dans leur papier :
   * [ ] exactement
   * [ ] avec quelques différences négligeables
   * [ ] avec quelques différences notables
   * [ ] avec beaucoup de différences

Commentaires éventuels : N'ayant pu exécuter le code sans erreur, je ne peux répondre aux questions 5 à 7.

## Résultat

En tant que reviewer, **j'estime** qu'à la fin de ma review, **le dépôt de l'auteur permet de reproduire les résultats annoncés** :

* [ ] Oui, tous
* [ ] Oui, avec quelques réserves
* [x] Non

Commentaires éventuels :
