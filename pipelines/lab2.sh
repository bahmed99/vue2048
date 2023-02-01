#!/bin/bash
cd .. && pnpm install
echo "-------------------------- dependecies installed --------------------------"
pnpm type-check
echo "-------------------------- Vérification du typage statique du code done --------------------------"
pnpm lint 
echo "-------------------------- Analyse statique du code done --------------------------"
pnpm build 
echo '-------------------------- Construction du "package" à déployer done --------------------------'
pnpm test
echo '-------------------------- Exécution des tests done -------------------------- '

outdated_dependencies=$(pnpm outdated --json)
mkdir -p reports
echo $outdated_dependencies > reports/outdated_dependencies.json