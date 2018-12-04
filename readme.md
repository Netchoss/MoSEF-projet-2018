# Projet MoSEF 2019-2019 de NACHAMPASSAK Bénédicte (netchoss)

#### **Le but de se "readme.md" est de comprendre le fonctionnement de ce projet et du script. Vous y trouverez également le code!**

### *PARTIE A*

Cette première partie concerne le script. Pour trouver le script, l'utilisateur doit forker mon repository puis le cloner (voir Partie B). **Il est important defaire la commande ```cd MoSEF-Projet-2018```** (la commande ls permet de voir sile fichier fich_semaine_derniere.sh est présent)

A l'aide de la commande ```bash```, l'utilisateur va pouvoir exécuter le script.Il est demandé à l'utilisateur son nom, le script lui souhaitera la bienvenue etlui donnera la date du jour.
Puis, le script lui affichera la liste des fichiers dans un répertoire, il pourra alors choisir un répertoire existant. Le chemin du répertoire apparaitra.
Le script montrera les 4 premiers codes à l'aide de la commande ```head```
Pour finir, il est demandé d'afficher tous les fichiers modifiés d'il y a moins d'une semaine du répertoire donné par l'utilisateur.

### *PARTIE B*

Cette seconde partie a pour but d'évaluer la compréhension de Linux, du langage Markdown, de Git et de Github. Voici la manière de procéder pour faire le projet.

**Question 1**
Pour forker le dépôt dans notre Github, c'est-à-dire de copier un repo d'un autre compte Github sur notre propre compte, il suffit dans un premier temps de se connecter à notre compte Github puis d'aller sur le compte de ambalde, d'aller sur le repo demandé pour enfin cliquer en haut à droite sur "Fork".

**Question 2**
Pour cloner notre copie en local, il faudrait avoir le lien de notre copie qui est visible (après l'avoir forké) en cliquant sur Clone or download.
```
 git clone https://github.com/Netchoss/MoSEF-projet-2018.git
```

**Il est important d'être dans le bon dossier "Mosef-projet-2018 à l'aide de la commande ```cd MoSEF-projet-2018```**

**Question 3**
Création du fichier shell, fich_semaine_derniere.sh à l'aide de vim. Pour l'exécuter, nous utilisons la commande *"bash"*


**Question 4**
Avant de commiter, initialement, le fichier est dans le local, pour pouvoir le commiter, il faudrait qu'il soit au niveau "Brouillon"
``` 
git add fich_semaine_derniere.sh
```
Nous pouvons le vérifier avec ``` git status ```
Nous pouvons donc commiter le fichier dans notre dépôt local.
```
git commit -m "Ajout du fichier .sh"
```
Pour pousser les modifications dans le dépot distant
```
git push -u origin master
```  

**Question 5**
Editer le script :
 ```
echo "find -type f mtime -7" >> fich_semaine_derniere.sh
 ```

**Question 6** 
Pour créer une nouvelle branche appelé new_branch 
```
git branch new_branch
```

**Question 7**
Pour pousser les changements dans notre dépôt distant ``` git push origin new_branch ``` et non origin master. **Attention, ne pas oublier de vérifier s'il on est sur la bonne branche avec ```git branch```

**Question 8**
Pour faire une pull request, c'est à dire de comparer interactivement 2 branches avant de les fusionner, il suffit d'être sur notre compte github, de cliquer sur pull request. 
**ATTENTION il faut choisir notre branche master et non celle de ambalde**
Puis de les fusionner sur notre compte également en cliquant sur *Merge Pull Request*

**Question 9**
Pour fusionner la nouvelle branche à master, il est **important de se placer sur la branche master avant de fusionner**
``` 
git checkout master
```
(on peut le vérifier avec un git status pour le code couleur en vert) 
```
git merge new_branch
```

**Question 10**
Pour supprimer le fichier Consignes.md
``` 
rm -rf Consignes.md
```
```
git add Consignes.md
```
```
git commit -m "Suppression du fichier .md"
```
```
git pull 
```
```
git push
```

**NB** 
La commande pull permet de mettre à jour un répertoire de travail local avec les données d'un repository distant. Cette commande télécharge les données des commits qui n'ont pas été récupérées dans notre branche locale puis fusionne ces données. 

Si vous ne comprenez pas les bases de Github, veuillez jetez un coup d'oeil ici : [Github pour les Nuls](https://m.youtube.com/watch?v=hPfgekYUKgk)
