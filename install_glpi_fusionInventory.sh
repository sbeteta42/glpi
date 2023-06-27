#/sbin/bash
#########################################################
# script d'installation auomatisé par sbeteta@beteta.org#
#########################################################
# installation des dependances fonctionnelles
apt -y install dmidecode hwdata ucf hdparmapt -y install dmidecode hwdata ucf hdparmapt -y install dmidecode hwdata ucf hdparm
apt -y install dmidecode hwdata ucf hdparm
apt -y install perl libuniversal-require-perl libwww-perl libparse-edid-perl
apt -y install libxml-treepp-perl libyaml-perl libnet-cups-perl libnet-ip-per
apt -y install libdigest-sha-perl libsocket-getaddrinfo-perl libtext-template-perl
apt -y install libxml-xpath-perl libyaml-tiny-perl
apt -y install libnet-snmp-perl libcrypt-des-perl libnet-nbname-perl
apt -y install libdigest-hmac-perl
apt -y install libfile-copy-recursive-perl libparallel-forkmanager-perl
apt -y install libwrite-net-perl
apt-get install apache2 php libapache2-mod-php -y
apt-get install php-imap php-ldap php-curl php-xmlrpc php-gd php-mysql php-cas -y
apt-get install mariadb-server -y
apt-get install apcupsd php-apcu php7.2-mbstring php7.2-intl php7.2-zip php7.2-bz2 mc -y
# on relance apache et mariadb
/etc/init.d/apache2 restart
/etc/init.d/mysql restart
# creation de la base de données
service apache2 start
mysql -u root -e "create database glpidb;"
mysql -u root -e "grant all privileges on glpidb.* to 'glpiuser'@'localhost' identified by 'operations';"
mysql -u root -e "flush privileges;"
# download de glpi
wget https://github.com/glpi-project/glpi/releases/download/9.5.7/glpi-9.5.7.tgz
#dezip de glpi dans /var/www/html
tar zxvf glpi-9.5.7.tgz -C /var/www/html
# on met les droits sur le dossier glpi
chown -R www-data /var/www/html/glpi
# download de fusioninventory
wget https://github.com/fusioninventory/fusioninventory-for-glpi/releases/download/glpi9.5%2B3.0/fusioninventory-9.5+3.0.tar.bz2
# on detare fusioninventory dans /var/www/html/glpi
tar jxvf fusioninventory-9.5+3.0.tar.bz2 -C /var/www/html/glpi/plugins
