#/sbin/bash
###########################################################################################
# script d'installation automatisée de GLPI 10.10 et FusioInventory par sbeteta@beteta.org#
###########################################################################################
#Maj de Debian12
echo " Maj de Debian 12.. please wait.."
sleep 3
sudo apt-get update -y && sudo apt-get upgrade -y
clear

# Installation du socle LAMP
echo "Installation du socle LAMP "
sleep 3
sudo apt-get install apache2 php mariadb-server -y
clear

# installation des dependances fonctionnelles
echo "installation des dependances fonctionnelles"
sleep 5
sudo apt-get install php-xml php-common php-json php-mysql php-mbstring php-curl php-gd php-intl php-zip php-bz2 php-imap php-apcu php-ldap -y
clear

# creation de la base de données
echo "creation de la base de données"
sleep 5
sudo mysql -u root -e "create database glpidb;"
sudo mysql -u root -e "grant all privileges on glpidb.* to 'glpiuser'@'localhost' identified by 'operations';"
sudo mysql -u root -e "flush privileges;"
clear

# download de GLPI
echo "Download de GLPI... Please wait..."
sleep 5
cd /tmp
wget https://github.com/glpi-project/glpi/releases/download/10.0.15/glpi-10.0.15.tgz

#dezip de glpi dans /var/www/html
echo "Dezippage de GLPI"
sleep 3
sudo tar -xzvf glpi-10.0.15.tgz -C /var/www/html

# on met les droits sur le dossier glpi
sudo chown www-data /var/www/html/glpi/ -R
clear

# download de fusioninventory
echo "Dowload de fusioninventory-for-glpi"
sleep 3
sudo wget https://github.com/glpi-project/glpi-inventory-plugin/releases/download/1.0.3/glpi-glpiinventory-1.0.3.tar.bz2

# on detare fusioninventory dans /var/www/html/glpi
echo "On detare fusioninventory dans /var/www/html/glpi"
sleep 3
sudo tar jxvf glpi-glpiinventory-1.0.3.tar.bz2 -C /var/www/html/glpi/plugins

# on relance apache et mariadb
echo "on relance apache et mariadb"
sleep 3
sudo /etc/init.d/apache2 restart
sudo /etc/init.d/mariadb restart
echo "Installation de GLPI et fusioninventory TERMINE"
