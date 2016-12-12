#! /bin/sh

# Script d'installation global de l'infrastructure OpenHab
CURRENT_DIR="$(basename $(pwd))"

if [ $CURRENT_DIR != "domotiqueFablab" ] # On vérifit que c'est bien exécuté à la racine
then
	echo "Veuillez exécuter ce script à la racine du git"
	exit
fi

# Mise en place du proxy relatif au point d'accès du FabLab
#TODO

# Installation de mosquitto
sudo -E apt-get mosquitto

# Installation d'OpenHab


