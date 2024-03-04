# Chat en Bash Usando Pipes Nombrados

Este proyecto desarrolla un chat simple en bash para dos usuarios empleando Pipes Nombrados en Linux. Los Pipes Nombrados facilitan una interacción entre procesos, permitiendo que dos scripts de bash intercambien información.

## Estructura del Proyecto

- **user_chat_1.sh**: Script para el usuario 1 en el chat.
- **user_chat_2.sh**: Script para el usuario 2 en el chat.

## Guía de Uso

### Paso 1: Iniciar usuario1_chat.sh

```bash
./user_chat_1.sh
```

Inicia el chat para el usuario 1, esperando que ingrese mensajes.

### Paso 2: Iniciar usuario2_chat.sh en otra terminal

```bash
./user_chat_2.sh
```

Activa el chat para el usuario 2, quien podrá recibir y enviar mensajes al usuario 1.

## Detalles Técnicos

### Creación del Pipe Nombrado

- Cada script define una variable `NAMED_PIPE` que indica la ubicación del Pipe Nombrado para la comunicación.

### Configuración del Pipe Nombrado

- Se comprueba la existencia del Pipe Nombrado, creándolo con `mkfifo` si no se encuentra.

### Intercambio de Mensajes

- Los scripts acceden al Pipe Nombrado en modo lectura/escritura (`exec 3<> "$NAMED_PIPE"`), permitiendo la transmisión bidireccional de mensajes.

### Chat Usuario 1

- El usuario 1 escribe mensajes que se envían por el Pipe y espera respuestas del usuario 2.
- Tras enviar un mensaje, se utiliza `sync` para sincronizar la comunicación.

### Chat Usuario 2

- El usuario 2 lee continuamente del Pipe y responde tras cada mensaje recibido.
- Espera la réplica del usuario 1 antes de proceder con más mensajes.

### Cierre del Chat

- Se cierra el descriptor de archivo asociado al Pipe (`exec 3>&-`) al finalizar los scripts.

## Ejemplo de Conversación

Terminal del Usuario 1:

```plaintext
Chat del Usuario 1 activo
Buenos días
Usuario 2: Hola, ¿cómo estás?
Bien, ¿y tú?
Usuario 2: ¡Excelente!
Adiós
Usuario 2: Hasta luego
```

Terminal del Usuario 2:

```plaintext
Chat del Usuario 2 activo
Usuario 1: Buenos días
Usuario 2: Hola, ¿cómo estás?
Usuario 1: Bien, ¿y tú?
Usuario 2: ¡Excelente!
Usuario 1: Adiós
Usuario 2: Hasta luego
```

## Sistema de permisos de linux

- Asegúrate de otorgar permisos de ejecución a los scripts (`chmod +x user_chat_1.sh user_chat_2.sh`).
