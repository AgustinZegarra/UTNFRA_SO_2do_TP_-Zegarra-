#!/usr/bin/env bash
set -euo pipefail

echo "1) Construyendo la imagen localmente…"
docker build -t web1-zegarra .

echo "2) Etiquetando la imagen para Docker Hub…"
docker tag web1-zegarra agustinzegarra/web1-zegarra:latest

echo "3) Subiendo la imagen a Docker Hub…"
docker push agustinzegarra/web1-zegarra:latest

echo "¡Listo! Imagen disponible en docker.io/agustinzegarra/web1-zegarra:latest"

