# GLPI avec le plugin GLPI Invenntory (Et plus FUSION INVENTORY !)
Script d'installation en shell

# Pre-requis
- OS: Debian 12 core
- apt install -y openssh-server git

# Note d'information
Depuis peu le plugin Fusion Inventory pour GLPI ne foctionne plus depuis les verssions 10 de GLPI.
Il faut utiliser le pugin GPLI INVENTORY
Le script mis à disposition installe GLPI avec le plugin GLPI INVENTORY 

# Installation
```bash
git clone https://github.com/sbeteta42/glpi.git
cd glpi
chmod +x install_glpi-10_fusioninventory.sh
./install_glpi-10_fusioninventory.sh
