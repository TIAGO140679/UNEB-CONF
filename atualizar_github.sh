#!/bin/bash
# Execute esse script na pasta onde está o index.html baixado

echo "=== Atualizando repositório SITEMA_UNEB1 no GitHub ==="

# Verificar se git está instalado
if ! command -v git &> /dev/null; then
    echo "ERRO: Git não está instalado. Baixe em https://git-scm.com"
    exit 1
fi

# Configurar (substitua pelos seus dados se necessário)
REPO="https://github.com/TIAGO140679/SITEMA_UNEB1.git"

echo "1. Clonando repositório..."
git clone $REPO temp_uneb
cd temp_uneb

echo "2. Copiando index.html..."
# Copie o index.html baixado para esta pasta
cp ../index.html .

echo "3. Enviando para o GitHub..."
git add index.html
git commit -m "Atualizar sistema UNEB Ingresso 2026.1"
git push origin main

echo "=== Concluído! Aguarde o Vercel fazer o deploy automático ==="
