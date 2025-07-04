#!/bin/bash
[[ $EUID -ne 0 ]] && echo "Debe ejecutarse como root" && exit 1
USR_BASE=$1
LISTA=$2
while IFS=: read -r USUARIO GRUPO; do
  [[ $USUARIO =~ ^# ]] && continue
  getent group "$GRUPO" >/dev/null || groupadd "$GRUPO"
  id "$USUARIO" >/dev/null || \
    useradd -m -s /bin/bash -g "$GRUPO" "$USUARIO"
  echo "$USUARIO:$(grep -Po '^'$USR_BASE':\K[^:]+' /etc/shadow)" \
    | chpasswd -e
done < "$LISTA"
