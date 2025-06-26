#!/bin/bash

echo "📦 Rodando migrations..."
bun run migrate

echo "🌱 Rodando seeds (se houver)..."
bun run seed || echo "⚠️ Nenhum seed encontrado ou falhou"

echo "🚀 Iniciando servidor..."
bun run start
