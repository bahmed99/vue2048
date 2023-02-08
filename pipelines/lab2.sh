#!/bin/bash
cd .. && pnpm install
echo "-------------------------- dependecies installed -----------------------------------------------------"
pnpm type-check
echo "-------------------------- Vérification du typage statique du code terminée --------------------------"
pnpm lint 
echo "-------------------------- Analyse statique du code terminée -----------------------------------------"
pnpm build 
echo "-------------------------- Construction du "package" à déployer terminée -----------------------------"
pnpm vitest
echo "-------------------------- Exécution des tests terminée ----------------------------------------------"
pnpm outdated -- format json > ./reports/outdated-dependecies.json
echo "-------------------------- Analyse des dépendances obsolètes terminée ---------------------------------"