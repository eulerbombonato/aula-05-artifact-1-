#!/bin/bash

# Verifica se o arquivo existe antes de aplicar chmod
if [ -f "./hello-server" ]; then
    chmod +x ./hello-server
    ./hello-server &
    sleep 5

    for LOGIN in Homer Bart Maggie; do
        echo "$(date): $(curl -s http://localhost:13000/${LOGIN})"
    done
else
    echo "Arquivo hello-server não encontrado!"
    exit 1
fi
