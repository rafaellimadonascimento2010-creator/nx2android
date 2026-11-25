#!/bin/bash
set -e
echo "=== 1. Instalando pacotes no Termux ==="
pkg update -y && pkg install python git openjdk-17 -y
pip install -r requirements.txt

echo "=== 2. Baixando ferramentas do nx2android ==="
python -m porter tools --download

echo "=== 3. Gerando o APK do Infernax ==="
python -m porter port ~/storage/downloads/ -k ~/storage/downloads/prod.keys --experimental -o ~/storage/downloads/

echo "=== PRONTO! Verifique sua pasta Downloads ==="
