#!/bin/bash
# Deploy Massagem & Terapia demo a GitHub Pages
# Ejecutar desde: ~/Desktop/agency/massagem-terapia-demo/

REPO="massagem-terapia-rio"
ORG="cybertron-capital"

echo "🚀 Creando repositorio en GitHub..."
gh repo create "$ORG/$REPO" \
  --public \
  --description "Demo web - Massagem & Terapia Rio de Janeiro" \
  --source=. \
  --remote=origin \
  --push

echo "⚙️  Activando GitHub Pages..."
gh api repos/$ORG/$REPO/pages \
  --method POST \
  -f source.branch=master \
  -f source.path=/

echo ""
echo "✅ Listo! En 1-2 minutos estará en:"
echo "   https://$ORG.github.io/$REPO/"
