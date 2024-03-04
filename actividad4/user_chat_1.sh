#!/bin/bash

NAMED_PIPE="/tmp/pipe_usuario1_usuario2"

if [ ! -e "$NAMED_PIPE" ]; then
    mkfifo "$NAMED_PIPE"
fi

exec 3<> "$NAMED_PIPE"

echo "Chat del Usuario 1 activo"

while true; do
    echo -n "Usuario 1: "
    read -r linea
    echo "$linea" >&3
    sync
    read -r respuesta <&3
    echo "Usuario 2: $respuesta"
done

exec 3>&-
