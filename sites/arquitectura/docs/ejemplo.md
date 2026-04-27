---
layout: default
title: Registros, Buses, Señales Gobierno
nav_order: 2
parent: Inicio
---

# Registros y Buses de Datos

Un registro es una organización lógica que agrupa un conjunto de biestables destinados a almacenar información binaria de forma temporal. Cada uno de estos componentes guarda un bit y define la longitud de palabra que la arquitectura puede procesar en una unidad de tiempo.

Las funciones elementales de un registro incluyen la lectura y grabación de cadenas binarias. También permiten realizar operaciones adicionales como la puesta a cero, la complementación y la transferencia de información hacia otros componentes del sistema.

Si se añade lógica combinacional y secuencial, el registro puede transformarse en un contador, descontador o registro de desplazamiento. Estas estructuras permiten el movimiento de datos hacia la derecha o izquierda y pueden organizarse como listas del tipo ```LIFO``` o ```FIFO```.

## Clasificación de los Registros

Existen diversas categorías de registros según su aplicación específica dentro de la arquitectura del procesador.

* Los registros de datos guardan números enteros y un ejemplo clásico es el registro acumulador de la unidad aritmético lógica.
* Los registros de memoria están destinados exclusivamente a almacenar direcciones para el acceso al almacenamiento.
* Los registros de propósito general o ```GPR``` pueden guardar tanto datos como direcciones y son la base de la arquitectura Von Neumann.
* Los registros de coma flotante están diseñados para cálculos algebraicos con números decimales separando la mantisa del exponente.
* Los registros de constantes son creados por hardware y funcionan como elementos de solo lectura para valores como la frecuencia del reloj.
* Los registros de propósito específico mantienen información crítica del sistema como los punteros de pila o los indicadores de estado conocidos como flags.

## Arquitectura de Buses

Los buses son arreglos de líneas lógicas compuestos físicamente por hilos eléctricos o pistas metálicas sobre circuitos impresos. Su finalidad es interconectar los órganos del computador para transferir información mediante una conexión biunívoca entre hilos y biestables.

En arquitecturas como la denominada Abacus se diferencia el ```Bus M``` para el transporte de datos e instrucciones y el ```Bus S``` reservado para direcciones de memoria.

Un concepto físico fundamental es el tiempo de llenado o estabilización. Los electrones requieren una fracción de tiempo medida en nanosegundos para propagarse y saturar los hilos del bus con voltajes estables que representen los valores lógicos.

## Señales de Gobierno y Transferencia

Las señales de gobierno son microórdenes generadas por el secuenciador de la unidad de control para ejecutar las instrucciones de máquina. Estas señales coordinan el tráfico de datos en la ruta de información.

* Las señales de nivel ocupan todo el tiempo entre los latidos del reloj y su función es estabilizar el contenido de un registro origen sobre el bus.
* Las señales impulsionales son breves y se emiten cuando el bus alcanzó su estado de madurez para obligar al registro de destino a capturar la información.

La interacción integral ocurre cuando el secuenciador emite una señal de nivel para volcar datos en el bus. Al finalizar el ciclo y con el bus plenamente cargado se emite la señal impulsional que fuerza al registro destino a leer y atrapar los datos en sus biestables.
