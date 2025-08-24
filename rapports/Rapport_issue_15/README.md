# GRETSI'25 - Label Reproductible - Rapport de l'issue #15

![](../../img/label_argent.png)

Code testé par Félix RIEDEL.

## Infos du dépôt

* ID de l'article : 1522
* Titre de l'article : Raining Words - Les modèles d'ASR peuvent-ils retranscrire les sous-genres de Metal ?
* URL du dépôt git du code : [https://github.com/BastienPasdeloup/extreme_vocals_asr](https://github.com/BastienPasdeloup/extreme_vocals_asr)
* Langage(s) : Python

## Configuration utilisée par le reviewer

* OS (nom et version) : Linux (Ubuntu 22.04.5 LTS)
* Processeur
  * Nom : Intel Xeon Gold 5218
  * Nombre de cœurs : 32
* Carte graphique
  * Nom : NVIDIA RTX A6000
  * Mémoire dédiée : 48 Gb
* Taille de la RAM : 256 Gb

## A - État initial avant review

1. **Toutes les infos** de l'issue étaient exactes :
   * [x] Oui
   * [ ] Non
2. Le dépôt était **public** dès le départ :
   * [x] Oui
   * [ ] Non
3. Il y avait un **README** avec des instructions pour compiler/exécuter le code :
   * [ ] Oui
   * [x] Non
4. Les **données** nécessaires pour reproduire les résultats étaient disponibles :
   * [ ] Oui, toutes
   * [x] Oui, en grande partie
   * [ ] Non, il manquait des données essentielles
5. Les **éléments à reproduire** étaient accessibles :
   * [x] Oui, tous
   * [ ] Oui, en grande partie
   * [ ] Non, il manquait des éléments essentiels

Commentaires éventuels : 

## B - Procédure suivie pendant la review

21/04/2025

* Téléchargement du dépôt git : `git clone https://github.com/BastienPasdeloup/extreme_vocals_asr.git`
* Création d’un environnement virtuel (Miniconda) :

```bash
conda create -n review_gretsi1
conda activate review_gretsi1
```

* Test du script principal : `python3 script_run_all.py`
* Installation des dépendances non listées, dans l’ordre suivant :

```bash
pip install pandas
pip install torchaudio
pip install ytp_dlp
pip install huggingface_hub
pip install nemo
```

Problème sur la dépendance "nemo", le nom de la dépendance ne correspond pas à celui utilisé dans le code.
⇒ Retour aux auteurs du papier.

24/04/2025 :

* Retour des auteurs, ils ont rajouté un fichier de dépendances requirements.txt pour les installer.
* Mise à jour du dépôt : `git pull`
* Création d’un nouvel environnement virtuel :

```bash
conda create -n review_gretsi2
conda activate review_gretsi2
```

* Installation des dépendances : `pip install -r requirements.txt`
* Test du script principal : `python3 script_run_all.py`
Erreur : mot clef `@override` non reconnu
`@override` est introduit en version 3.12 de Python, ma version est 3.10

* Création d’un nouvel environnement virtuel :

```bash
conda create -n review_gretsi2 python=3.12
conda activate review_gretsi2
```

* Installation des dépendances : `pip install -r requirements.txt`
* Test du script principal : `python3 script_run_all.p`y
Erreur : ffprobe et ffmpeg non trouvé (utilisés dans la librairie ytp_dlp)
* Installation de la dépendance : `sudo apt-get install ffmpeg`
* Test du script principal : `python3 script_run_all.p`y
Erreur : la chaîne Youtube ayant publié la vidéo https://www.youtube.com/watch?v=Xy39_E68EmY a  a été supprimée
* Suppression de la ligne 235 du fichier scrip_1_get_dataset.py
* Test du script principal : `python3 script_run_all.py`
Erreur : la chaîne Youtube ayant publié la vidéo https://www.youtube.com/watch?v=gilVBNSRt6o a  a été supprimée
* Suppression de la ligne 295 du fichier scrip_1_get_dataset.py
* Test du script principal : `python3 script_run_all.py`
Le script tourne sans erreur et produit les figures de l’article

⇒ Retour aux auteurs du papier

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
  * [x] Oui, tous
  * [ ] Oui, en grande partie
  * [ ] Non, il manque des éléments essentiels

Commentaires éventuels :

Il manque un fichier audio pour la base de données (ne peut plus être récupéré).

### _2 - Reproductibilité_

1. **Temps de compilation** constaté :
2. **Temps d'exécution** constaté :
3. Le code **compile** :
   * [ ] sans erreur
   * [ ] avec des erreurs
   * [x] non concerné
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

très légère différence sur la figure 2 (positions des points pas tout à fait identique)

## Résultat

En tant que reviewer, **j'estime** qu'à la fin de ma review, **le dépôt de l'auteur permet de reproduire les résultats annoncés** :

* [x] Oui, tous
* [ ] Oui, avec quelques réserves
* [ ] Non

Commentaires éventuels :

Toutes les erreurs ont été corrigées lors des échanges avec les auteurs. Les résultats obtenus sont très similaires à ceux du papier (légère différence dans les positions des points de la figure 2).
