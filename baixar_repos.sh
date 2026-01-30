#!/bin/bash

# mkdir -p repos
# cd repos

USER="marcoantonioap"

REPOS=(
    prompts_files
    sido,
	oneetl,
	ingles,
	ideias,
	lugar_mais_perto,
	fiap-pos-grad-data-analyst
    # adicione outros aqui no futuro
)

for repo in "${REPOS[@]}"; do
    if [ -d "$repo" ]; then
        echo "Pulando (já existe): $repo"
        continue
    fi
    git clone "https://github.com/$USER/$repo.git"
done
