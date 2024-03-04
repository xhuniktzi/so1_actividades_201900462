#!/bin/bash

NAMED_PIPE="/tmp/pipe_usuario1_usuario2"

if [ ! -e "$NAMED_PIPE" ]; then
    mkfifo "$NAMED_PIPE"
fi

exec 3<> "$NAMED_PIPE"

echo "Chat del Usuario 2 activo"

while true; do
    read -r linea <&3
    echo "Usuario 1: $linea"
    echo -n "Usuario 2: "
    read -r respuesta
    echo "$respuesta" >&3
    sync
done

exec 3>&-
