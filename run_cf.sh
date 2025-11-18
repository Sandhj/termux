#!/bin/bash

# Pindah ke direktori
cd ~/termux/cf

# Cek apakah cf-manager.py sudah running
if pgrep -f "python cf-manager.py" > /dev/null; then
    echo "cf-manager.py sudah running"
    exit 0
else
    echo "cf-manager.py belum running, menjalankan..."
    python cf-manager.py
fi
