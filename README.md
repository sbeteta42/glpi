#GLPI avec le plugin FusionInvenntory
Script d'installation en shell

# Pre-requis
- OS: Debian 12
- apt install -y openssh-server git

# Installation
```bash
git clone https://github.com/sbeteta42/glpi.git
cd glpi
chmod +x install_glpi_fusionInventory.sh
./install_glpi_fusionInventory.sh
