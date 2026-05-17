#!/bin/bash
# sync.sh — Sincroniza el repo fran-contexto-global con GitHub
# Uso: ./sync.sh
# Uso con mensaje: ./sync.sh "Actualizo contexto de AlmacenVision"

REPO_DIR="$HOME/proyectos/fran-contexto-global"

# Colores para los mensajes
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # Sin color

echo ""
echo "🔄 Sincronizando fran-contexto-global..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# Verificar que la carpeta existe
if [ ! -d "$REPO_DIR" ]; then
  echo -e "${RED}❌ No encuentro la carpeta: $REPO_DIR${NC}"
  echo "   Comprueba que el repo está clonado en ~/proyectos/"
  exit 1
fi

cd "$REPO_DIR"

# PASO 1: Bajar cambios remotos
echo ""
echo "📥 Bajando cambios de GitHub..."
git fetch origin main 2>/dev/null

REMOTE_CHANGES=$(git log HEAD..origin/main --oneline 2>/dev/null | wc -l | tr -d ' ')

if [ "$REMOTE_CHANGES" -gt 0 ]; then
  echo -e "${YELLOW}   Hay $REMOTE_CHANGES cambio(s) remotos. Aplicando...${NC}"
  git pull origin main
else
  echo -e "${GREEN}   Ya estás al día con GitHub.${NC}"
fi

# PASO 2: Ver si hay cambios locales
LOCAL_CHANGES=$(git status --porcelain | wc -l | tr -d ' ')

if [ "$LOCAL_CHANGES" -eq 0 ]; then
  echo ""
  echo -e "${GREEN}✅ No hay cambios locales pendientes de subir.${NC}"
  echo ""
  exit 0
fi

# PASO 3: Mostrar qué ficheros han cambiado
echo ""
echo "📝 Cambios locales detectados:"
git status --short
echo ""

# PASO 4: Pedir mensaje de commit (o usar el que se pasó como argumento)
if [ -n "$1" ]; then
  COMMIT_MSG="$1"
else
  echo -n "   Escribe un mensaje para el commit (o pulsa Enter para mensaje automático): "
  read COMMIT_MSG
  if [ -z "$COMMIT_MSG" ]; then
    COMMIT_MSG="Actualización $(date '+%Y-%m-%d %H:%M') desde $(hostname -s)"
  fi
fi

# PASO 5: Subir cambios
echo ""
echo "📤 Subiendo cambios a GitHub..."
git add .
git commit -m "$COMMIT_MSG"
git push origin main

echo ""
echo -e "${GREEN}✅ Sincronización completa.${NC}"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
