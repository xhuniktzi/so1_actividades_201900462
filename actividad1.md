# Actividad 1

Los tipos de kernel y sus diferencias se centran principalmente en cómo están estructurados y cómo interactúan con el hardware y el software del sistema operativo. Aquí tienes un resumen de los principales tipos de kernel:

1. **Kernel Monolítico**: Es uno de los más antiguos y tradicionales. En este modelo, todas las funcionalidades del kernel se ejecutan en el espacio del núcleo, lo que implica que las tareas del sistema operativo como la gestión de archivos y memoria están implementadas en un solo bloque de código. Esto ofrece un rendimiento óptimo, pero tiene inconvenientes como la falta de modularidad y la dificultad para depurar errores.

2. **Kernel Microkernel**: Es un kernel minimalista que gestiona solo las funciones esenciales del sistema operativo, como la gestión de memoria y la comunicación entre procesos. Las demás funcionalidades se implementan como servicios independientes en el espacio del usuario, lo que proporciona mayor modularidad y flexibilidad, aunque puede afectar al rendimiento.

3. **Kernel Híbrido**: Combina características del kernel monolítico y del microkernel. Algunas funcionalidades se ejecutan en el espacio del núcleo, mientras otras como servicios independientes en modo usuario. Esto permite combinar eficiencia y rendimiento con modularidad y flexibilidad.

4. **Kernel Exokernel**: Se enfoca en asignar los recursos del hardware a los programas en ejecución, permitiendo un control completo sobre los recursos asignados. Ofrece un rendimiento excepcional pero es complejo de implementar y puede requerir cambios en las aplicaciones existentes.

5. **Nanokernel y Unikernel**: Estos son aún más reducidos que los microkernels, usados generalmente en sistemas embebidos o dispositivos de bajo consumo.

6. **Anykernel**: Es un enfoque novedoso que busca combinar las ventajas de un kernel monolítico con el desarrollo fácil de controladores y mayor seguridad a nivel de usuario.

En cuanto a **User mode vs Kernel mode**, estas son dos modos de operación distintos en un sistema operativo. El kernel mode (o modo supervisor) tiene acceso completo al hardware y puede ejecutar cualquier instrucción de la CPU. En contraste, el user mode (o modo usuario) tiene restricciones de acceso para proteger el sistema de operaciones potencialmente dañinas o maliciosas. El kernel mode es donde se ejecuta el kernel del sistema operativo, mientras que las aplicaciones y programas del usuario se ejecutan en el user mode.

Sobre **Interrupciones vs Traps**: Las interrupciones son señales generadas por el hardware para indicar que un evento externo requiere la atención del procesador. Pueden ser provocadas por dispositivos de hardware como discos duros o tarjetas de red. En cambio, los traps son interrupciones generadas por el software cuando se produce una condición de error o una situación excepcional en un programa, como un error de división por cero. Ambos mecanismos son esenciales para la gestión eficiente de los recursos en un sistema operativo.
