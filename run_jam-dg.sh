#!/bin/bash

# Pindah ke direktori
cd ~/jam-dg

# Cek apakah cf-manager.py sudah running
if pgrep -f "python server.py" > /dev/null; then
    echo "server.py sudah running"
    exit 0
else
    echo "server.py belum running, menjalankan..."
    python server.py
fi
