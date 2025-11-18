#!/bin/bash

# Pindah ke direktori
cd ~/sc

# Cek apakah cf-manager.py sudah running
if pgrep -f "python sc-installer.py" > /dev/null; then
    echo "sc-installer.py sudah running"
    exit 0
else
    echo "sc-installer.py belum running, menjalankan..."
    python sc-installer.py
fi
