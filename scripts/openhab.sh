#! /bin/sh

# Téléchargement du runtime
mkdir -p tmp
wget -nc https://bintray.com/artifact/download/openhab/bin/distribution-1.8.3-runtime.zip -O tmp/openhab-runtime.zip

# Extraction
mkdir -p /opt/openhab
sudo unzip tmp/openhab-runtime.zip -d /opt/openhab

# Configuration
cp -R openhab/configurations /opt/openhab/configurations

