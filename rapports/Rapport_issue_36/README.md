# GRETSI'25 - Label Reproductible - Rapport de l'issue #36

![](../../img/label_or.png)

Code testé par Van-Tien PHAM.

## Infos du dépôt

* ID de l'article : 1517
* Titre de l'article : Reconstruction d’images en tomographie photoacoustique avec régularisation combinée variation totale - Cauchy
* URL du dépôt git du code : [https://github.com/dotrungthai2001/GRETSI25](https://github.com/dotrungthai2001/GRETSI25)
* Langage(s) : Python

## Configuration utilisée par le reviewer

* OS (nom et version) : Debian GNU/Linux 10 (buster)
* Processeur
  * Nom : Intel(R) Xeon(R) Gold 5215 CPU @ 2.50GHz
  * Nombre de cœurs : 40
* Carte graphique
  * Nom : NVIDIA A100
  * Mémoire dédiée : 40 GB
* Taille de la RAM : DDR4

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

Les informations initiales étaient complètes et ont permis une prise en main rapide du dépôt.

## B - Procédure suivie pendant la review

1. Installation

```bash
(base) van-tien.pham@siim-3:~/GRETSI25$ python -m pip install -r requirements.txt 
Requirement already satisfied: numpy in /home/van-tien.pham/anaconda3/lib/python3.12/site-packages (from -r requirements.txt (line 1)) (1.26.4)
Requirement already satisfied: scipy in /home/van-tien.pham/anaconda3/lib/python3.12/site-packages (from -r requirements.txt (line 2)) (1.13.1)
Requirement already satisfied: matplotlib in /home/van-tien.pham/anaconda3/lib/python3.12/site-packages (from -r requirements.txt (line 3)) (3.9.2)
Collecting opencv-python (from -r requirements.txt (line 4))
  Downloading opencv_python-4.11.0.86-cp37-abi3-manylinux_2_17_x86_64.manylinux2014_x86_64.whl.metadata (20 kB)
Requirement already satisfied: contourpy>=1.0.1 in /home/van-tien.pham/anaconda3/lib/python3.12/site-packages (from matplotlib->-r requirements.txt (line 3)) (1.2.0)
Requirement already satisfied: cycler>=0.10 in /home/van-tien.pham/anaconda3/lib/python3.12/site-packages (from matplotlib->-r requirements.txt (line 3)) (0.11.0)
Requirement already satisfied: fonttools>=4.22.0 in /home/van-tien.pham/anaconda3/lib/python3.12/site-packages (from matplotlib->-r requirements.txt (line 3)) (4.51.0)
Requirement already satisfied: kiwisolver>=1.3.1 in /home/van-tien.pham/anaconda3/lib/python3.12/site-packages (from matplotlib->-r requirements.txt (line 3)) (1.4.4)
Requirement already satisfied: packaging>=20.0 in /home/van-tien.pham/anaconda3/lib/python3.12/site-packages (from matplotlib->-r requirements.txt (line 3)) (24.1)
Requirement already satisfied: pillow>=8 in /home/van-tien.pham/anaconda3/lib/python3.12/site-packages (from matplotlib->-r requirements.txt (line 3)) (10.4.0)
Requirement already satisfied: pyparsing>=2.3.1 in /home/van-tien.pham/anaconda3/lib/python3.12/site-packages (from matplotlib->-r requirements.txt (line 3)) (3.1.2)
Requirement already satisfied: python-dateutil>=2.7 in /home/van-tien.pham/anaconda3/lib/python3.12/site-packages (from matplotlib->-r requirements.txt (line 3)) (2.9.0.post0)
Requirement already satisfied: six>=1.5 in /home/van-tien.pham/anaconda3/lib/python3.12/site-packages (from python-dateutil>=2.7->matplotlib->-r requirements.txt (line 3)) (1.16.0)
Downloading opencv_python-4.11.0.86-cp37-abi3-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (63.0 MB)
   ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 63.0/63.0 MB 82.2 MB/s eta 0:00:00
Installing collected packages: opencv-python
Successfully installed opencv-python-4.11.0.86
```

2. Usages

```bash
(base) van-tien.pham@siim-3:~/GRETSI25$ python model_construction.py 
Sensor 0/ 51 

Sensor 1/ 51 

Sensor 2/ 51 

Sensor 3/ 51 

Sensor 4/ 51 

Sensor 5/ 51 

Sensor 6/ 51 

Sensor 7/ 51 

Sensor 8/ 51 

Sensor 9/ 51 

Sensor 10/ 51 

Sensor 11/ 51 

Sensor 12/ 51 

Sensor 13/ 51 

Sensor 14/ 51 

Sensor 15/ 51 

Sensor 16/ 51 

Sensor 17/ 51 

Sensor 18/ 51 

Sensor 19/ 51 

Sensor 20/ 51 

Sensor 21/ 51 

Sensor 22/ 51 

Sensor 23/ 51 

Sensor 24/ 51 

Sensor 25/ 51 

Sensor 26/ 51 

Sensor 27/ 51 

Sensor 28/ 51 

Sensor 29/ 51 

Sensor 30/ 51 

Sensor 31/ 51 

Sensor 32/ 51 

Sensor 33/ 51 

Sensor 34/ 51 

Sensor 35/ 51 

Sensor 36/ 51 

Sensor 37/ 51 

Sensor 38/ 51 

Sensor 39/ 51 

Sensor 40/ 51 

Sensor 41/ 51 

Sensor 42/ 51 

Sensor 43/ 51 

Sensor 44/ 51 

Sensor 45/ 51 

Sensor 46/ 51 

Sensor 47/ 51 

Sensor 48/ 51 

Sensor 49/ 51 

Sensor 50/ 51

(base) van-tien.pham@siim-3:~/GRETSI25$ python reconstruction_tests.py 
SNR pour Rétroprojection: 1.514001004332191 dB
####
SNR pour least square : 8.808335793656818 dB
####
Non neg Least square iteration : 0/ 300
Non neg Least square iteration : 10/ 300
Non neg Least square iteration : 20/ 300
Non neg Least square iteration : 30/ 300
Non neg Least square iteration : 40/ 300
Non neg Least square iteration : 50/ 300
Non neg Least square iteration : 60/ 300
Non neg Least square iteration : 70/ 300
Non neg Least square iteration : 80/ 300
Non neg Least square iteration : 90/ 300
Non neg Least square iteration : 100/ 300
Non neg Least square iteration : 110/ 300
Non neg Least square iteration : 120/ 300
Non neg Least square iteration : 130/ 300
Non neg Least square iteration : 140/ 300
Non neg Least square iteration : 150/ 300
Non neg Least square iteration : 160/ 300
Non neg Least square iteration : 170/ 300
Non neg Least square iteration : 180/ 300
Non neg Least square iteration : 190/ 300
Non neg Least square iteration : 200/ 300
Non neg Least square iteration : 210/ 300
Non neg Least square iteration : 220/ 300
Non neg Least square iteration : 230/ 300
Non neg Least square iteration : 240/ 300
Non neg Least square iteration : 250/ 300
Non neg Least square iteration : 260/ 300
Non neg Least square iteration : 270/ 300
Non neg Least square iteration : 280/ 300
Non neg Least square iteration : 290/ 300
SNR pour Moindres carrés non négative : 13.886111359885343 dB
####
TV iteration : 0/ 1000
TV iteration : 50/ 1000
TV iteration : 100/ 1000
TV iteration : 150/ 1000
TV iteration : 200/ 1000
TV iteration : 250/ 1000
TV iteration : 300/ 1000
TV iteration : 350/ 1000
TV iteration : 400/ 1000
TV iteration : 450/ 1000
TV iteration : 500/ 1000
TV iteration : 550/ 1000
TV iteration : 600/ 1000
TV iteration : 650/ 1000
TV iteration : 700/ 1000
TV iteration : 750/ 1000
TV iteration : 800/ 1000
TV iteration : 850/ 1000
TV iteration : 900/ 1000
TV iteration : 950/ 1000
SNR pour l2-tv : 23.666949292972923 dB
####
l2-Cauchy gradient BFGS iteration : 0/ 200
l2-Cauchy gradient BFGS iteration : 10/ 200
l2-Cauchy gradient BFGS iteration : 20/ 200
l2-Cauchy gradient BFGS iteration : 30/ 200
l2-Cauchy gradient BFGS iteration : 40/ 200
l2-Cauchy gradient BFGS iteration : 50/ 200
l2-Cauchy gradient BFGS iteration : 60/ 200
l2-Cauchy gradient BFGS iteration : 70/ 200
l2-Cauchy gradient BFGS iteration : 80/ 200
l2-Cauchy gradient BFGS iteration : 90/ 200
l2-Cauchy gradient BFGS iteration : 100/ 200
l2-Cauchy gradient BFGS iteration : 110/ 200
l2-Cauchy gradient BFGS iteration : 120/ 200
l2-Cauchy gradient BFGS iteration : 130/ 200
l2-Cauchy gradient BFGS iteration : 140/ 200
l2-Cauchy gradient BFGS iteration : 150/ 200
l2-Cauchy gradient BFGS iteration : 160/ 200
l2-Cauchy gradient BFGS iteration : 170/ 200
l2-Cauchy gradient BFGS iteration : 180/ 200
l2-Cauchy gradient BFGS iteration : 190/ 200
SNR pour l2-Cauchy grad BFGS : 24.52524366739731 dB
####
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

Le README est clair et les données sont fournies. Aucun obstacle n’a été rencontré pour l’exécution.

### _2 - Reproductibilité_

1. **Temps de compilation** constaté : 0
2. **Temps d'exécution** constaté : 5 minutes
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

Les résultats sont conformes à ceux décrits dans l'article.

## Résultat

En tant que reviewer, **j'estime** qu'à la fin de ma review, **le dépôt de l'auteur permet de reproduire les résultats annoncés** :

* [x] Oui, tous
* [ ] Oui, avec quelques réserves
* [ ] Non

Commentaires éventuels :

Tous les critères de reproductibilité sont remplis. Le label peut être décerné sans réserve.
