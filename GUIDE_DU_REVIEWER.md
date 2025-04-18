# Guide du reviewer

> _Ce guide pourra être enrichi au fur et à mesure de la phase de review._

## L'issue Github

Pour effectuer une review, **partez de la page de l'issue Github** qui vous a été affectée.

Si vous rencontrez des erreurs ou des problèmes avant ou pendant votre review, vous pouvez dialoguer avec l'auteur en écrivant des commentaires en bas de l'issue. L'objectif n'est pas d'arrêter la review lorsqu'il y a un problème, mais d'**amener l'auteur à améliorer son code pour rendre ses résultats reproductibles**.

## Votre review sur Seafile

En tant que reviewer, vous recevez un lien vers un dossier Seafile qui contient :

* **l'article** associé au code à reviewer
* **un compte-rendu** au format Markdown avec des sections à compléter **avant, pendant et après** votre review.

## À vérifier avant la review

Avant de commencer à installer/compiler/exécuter, assurez-vous :

1. Que les **temps de compilation** ne sont pas confondus avec les temps d'entraînement
   * Faites corriger si nécessaire.
2. Que vous avez **accès au dépôt Git**
   * Demandez à y avoir accès et précisez que le dépôt ne sera labellisé que si le GRETSI est autorisé à en faire un fork sur un dépôt public.
3. Qu'il y a un **fichier README.md ou INSTALL.md** contenant
   * Les instructions pour compiler/exécuter
   * Les versions des langages et bibliothèques utilisées par les auteurs et/ou les versions minimales nécessaires, notamment celles de Conda, Python et Matlab.
4. Que vous avez **accès aux données** nécessaires pour reproduire les résultats
   * S'il s'agit d'un réseau de neurones, assurez-vous que vous avez accès au réseau déjà entraîné.
5. Que vous avez **accès aux éléments à reproduire** (données, figures, etc.)

## Démarche à adopter pendant la review

Voici une liste non exhaustive de démarche à adopter  face à des situations qui pourraient se présenter :

1. S'il y a une **erreur à la compilation ou à l'exécution** :
   * Échangez avec l'auteur pour qu'il corrige son dépôt si nécessaire (instructions du README.md/INSTALL.md, code et/ou données).
2. S'il y a des **problèmes d'environnement d'exécution ou de versions de dépendances** :
   a. Échangez avec l'auteur en lui indiquant votre problème et voyez avec lui comment le résoudre.
   b. Si le problème peut être résolu, **demandez à l'auteur de corriger son dépôt** Git en conséquence (instructions du README.md/INSTALL.md, code ou données).
   c. Si le problème ne peut pas être corrigé, contactez le responsable du Label Reproductible pour qu'il soit affecté à un autre rapporteur, et terminez de remplir votre compte-rendu.

## Contact

**Responsable du Label Reproductible** : [Adrien Krähenbühl (krahenbuhl@unistra.fr)](mailto:krahenbuhl@unistra.fr)


