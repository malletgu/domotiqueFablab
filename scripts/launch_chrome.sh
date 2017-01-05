#! /bin/bash

sh network.sh
chromium-browser --proxy-server="http://www-cache.ujf-grenoble.fr:3128"
google-chrome --proxy-server="http://www-cache.ujf-grenoble.fr:3128"
