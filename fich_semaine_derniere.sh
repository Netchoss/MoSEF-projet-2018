#!/bin/bash
read -p "Bonjour à toi, comment t'appelles-tu ? " user
echo "Bienvenue $USERNAME, où plus particulièrement $user, il fait très froid en ce moment.. Nous sommes le $(date +%d) $(date +%B) $(date +%Y) !"
echo ""

cd 

echo "Voici les fichiers que tu trouveras dans le répertoire sorbonne!"
ls  

read -p "Quel répertoire existant souhaites-tu ? " rep
cd $rep
echo""
 
echo "Le chemin de ton répertoire est le suivant:" 
pwd
echo ""

echo "Voici les 4 premières lignes du script: "
head -n 4 fich_semaine_derniere.sh  
echo""

echo "Voici les fichiers du repertoire $rep il y a moins d'une semaine: "
find -type f -mtime -7
