#!/bin/bash

USER="marcoantonioap"

REPOS=(
    prompts_files
    sido
    oneetl
    ingles
    ideias
	lugar_mais_perto
	fiap-pos-grad-data-analyst
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
