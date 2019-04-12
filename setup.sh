#!/bin/sh

# Para usar pip3 hay que instalar el paquete python3-pip,
# instalar con él el pip3 con pip3 install --user -U pip3 y
# desinstalar el paquete python3-pip.

# Instala requisitos de Sphinx:
pip3 install --user -r requirements.txt

# Instala extensión gitdags de LaTeX:
mkdir -p ~/texmf/tex/latex/gitdags/
cp gitdags.sty ~/texmf/tex/latex/gitdags/

# Instala última versión de titlesec:
unzip titlesec.zip -d ~/texmf/tex/latex

# Instala editor Leo.
sudo apt install python3-pyqt5
pip3 install --user leo
