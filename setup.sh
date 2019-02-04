#!/bin/sh

# Instala requisitos de Sphinx:
pip install -r requirements.txt

# Instala extensión gitdags de LaTeX:
mkdir -p ~/texmf/tex/latex/gitdags/
cp gitdags.sty ~/texmf/tex/latex/gitdags/

# Instala última versión de titlesec:
unzip titlesec.zip -d ~/texmf/tex/latex

# Instala editor Leo:
sudo apt install python-pyqt5
pip install leo
