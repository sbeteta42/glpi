# ![GLPI Logo](https://glpi-project.org/wp-content/uploads/2021/06/logo-glpi-bleu-1.png) GLPI : Déploiement pour TP / PoC 🧰

![OS](https://img.shields.io/badge/OS-Debian%2011%2F12%20|%20Ubuntu%2020.04%2F22.04-blue)
![Stack](https://img.shields.io/badge/Stack-PHP%20|%20MariaDB%20|%20Nginx%2FApache-orange)
![Status](https://img.shields.io/badge/Status-Lab%20Ready-success)
![License](https://img.shields.io/badge/License-MIT-green)

> Déploiement rapide de **GLPI** pour environnements de TP (ITSM/Helpdesk), PoC et démos.

---

## 📑 Table des matières
1. [À propos](#-à-propos)
2. [Prérequis](#-prérequis)
3. [Installation (script)](#-installation-script)

## 💡 À propos
Ce projet fournit un script Bash sécurisé et automatisé pour installer GLPI 11.x sur les serveurs Debian/Ubuntu.

Nouveautés de cette version :

    Prise en charge de HTTP/2 pour Apache HTTPS
    Certificat ECDSA SSL auto-signé (prime256v1)
    :: Global session.cookie_securel'application en PHP

## Note d'information
- Depuis peu le plugin Fusion Inventory pour GLPI ne fonctionne plus depuis les versions 10 de GLPI.
- Il faut utiliser le plugin GPLI INVENTORY
- Le nouveau script mis à disposition installe GLPI avec le plugin GLPI INVENTORY 

## 📦 Prérequis 
- **OS** : Debian 11/12 ou Ubuntu 20.04/22.04 (Server)
- **Réseau** : accès Internet + SSH
- **Paquets** : `nginx` ou `apache2`, `php` (+ extensions), `mariadb-server`, `git`, `curl`, …

```bash
apt install -y openssh-server git
```
## 🛠️ Installation 
```bash
git clone https://github.com/sbeteta42/glpi.git
cd glpi
chmod +x install_glpi-10_fusioninventory.sh
./install_glpi-10_fusioninventory.sh
```
## 🌐 Accès Web
LAN : http://<glpi_ip>/

## 🔐 Post-install & sécurité
- Changer tous les mots de passe (DB, GLPI)
- Supprimer/renommer /install après setup
- Activer HTTPS (Let’s Encrypt) si exposé
- Sauvegardes : dumps SQL + .../glpi/files/

## 📚 Documentation
Site GLPI : https://glpi-project.org

📜 Licence
MIT
