#!/bin/bash
# status.sh — Revisa el estado del repo sin modificar nada
# Uso: ./status.sh

REPO_DIR="$HOME/proyectos/fran-contexto-global"

# Colores
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m'

echo ""
echo "📊 Estado de fran-contexto-global"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

if [ ! -d "$REPO_DIR" ]; then
  echo -e "${RED}❌ No encuentro la carpeta: $REPO_DIR${NC}"
  exit 1
fi

cd "$REPO_DIR"

# Cambios remotos (sin bajarlos)
echo ""
echo "🌐 GitHub (remoto):"
git fetch origin main 2>/dev/null
REMOTE_CHANGES=$(git log HEAD..origin/main --oneline 2>/dev/null | wc -l | tr -d ' ')

if [ "$REMOTE_CHANGES" -gt 0 ]; then
  echo -e "${YELLOW}   ⚠️  Hay $REMOTE_CHANGES commit(s) en GitHub que no tienes en local.${NC}"
  echo -e "${YELLOW}   Ejecuta ./sync.sh para bajarlos.${NC}"
  git log HEAD..origin/main --oneline | sed 's/^/   - /'
else
  echo -e "${GREEN}   ✅ Estás al día con GitHub.${NC}"
fi

# Cambios locales
echo ""
echo "💻 Este equipo (local):"
LOCAL_CHANGES=$(git status --porcelain | wc -l | tr -d ' ')

if [ "$LOCAL_CHANGES" -eq 0 ]; then
  echo -e "${GREEN}   ✅ No hay cambios locales pendientes.${NC}"
else
  echo -e "${YELLOW}   ⚠️  Hay $LOCAL_CHANGES fichero(s) con cambios sin subir:${NC}"
  git status --short | sed 's/^/   /'
  echo ""
  echo -e "${BLUE}   Ejecuta ./sync.sh para subirlos.${NC}"
fi

# Último commit
echo ""
echo "🕐 Último commit guardado:"
git log -1 --pretty=format:"   %h — %s (%ar)" 2>/dev/null
echo ""
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
