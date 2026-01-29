#!/bin/bash

# mkdir -p repos
# cd repos

USER="marcoantonioap"

REPOS=(
    prompts_files
    sido,
	oneetl,
	ingles,
	ideias
    # adicione outros aqui no futuro
)

for repo in "${REPOS[@]}"; do
    if [ -d "$repo" ]; then
        echo "Pulando (já existe): $repo"
        continue
    fi
    git clone "https://github.com/$USER/$repo.git"
done
