#! /bin/sh

# Script d'installation global de l'infrastructure OpenHab
CURRENT_DIR="$(basename $(pwd))"

if [ $CURRENT_DIR != "domotiqueFablab" ] # On vérifit que c'est bien exécuté à la racine
then
	echo "Veuillez exécuter ce script à la racine du git"
	exit
fi

echo "###### Mise en place du proxy relatif au point d'accès du FabLab ######"
sh scripts/network.sh

echo "###### Installation d'OpenHab ######"
sh scripts/openhab.sh

echo "###### Installation de mosquitto ######"
sudo -E apt-get mosquitto

echo "###### Installation de EnOcean Mosquitto ######"
sh scripts/enocean.sh
sh scripts/enocean-mqtt.sh

# Configuration de enocean
cp config/enoceanmqtt.conf /opt/enocean-mqtt/enoceanmqtt.conf


