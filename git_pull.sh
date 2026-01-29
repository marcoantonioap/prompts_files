#!/bin/bash

USER="marcoantonioap"

REPOS=(
    prompts_files
    sido
    oneetl
    ingles
    ideias
    # adicione outros aqui no futuro
)

for repo in "${REPOS[@]}"; do
    if [ ! -d "$repo" ]; then
        echo "Pasta não existe, ignorando: $repo"
        continue
    fi

    echo "Atualizando: $repo"
    cd "$repo"
    git pull
    cd ..
done
