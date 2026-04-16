---
layout: default
title: Manejo de Secuencias
parent: Práctica
nav_order: 4
---

# Manejo de Secuencias

Una **secuencia** es un conjunto de datos relacionados entre sí, del mismo tipo, cuyo tamaño no es fijo y puede variar dinámicamente durante la ejecución del algoritmo. 

Toda secuencia debe cumplir con ciertas características lógicas: tener un primer elemento, mantener una relación de sucesión (un elemento precede a otro) y poseer una marca de **Fin de Secuencia (FDS)** para evitar bucles infinitos al procesarla.

### 1. Operadores de Secuencias (La Máquina de Caracteres)

Para procesar una secuencia, imaginamos una máquina abstracta con una "ventana" que permite ver un elemento a la vez, usando comandos específicos:

* **ARR(sec):** *Arrancar*. Prepara una secuencia existente para ser leída.
* **AVZ(sec, v):** *Avanzar*. Recupera el contenido del elemento actual y lo guarda en la variable `v`, moviendo la ventana al siguiente elemento.
* **CREAR(secNueva):** Inicializa una secuencia completamente vacía para empezar a guardar datos.
* **ESC(secNueva, v):** *Escribir*. Graba el contenido de la variable `v` en la nueva secuencia.
* **CERRAR(sec):** Finaliza el tratamiento de la secuencia. ¡Es obligatorio cerrar siempre las secuencias al terminar!.

### 2. Ejemplo Práctico: Recorrido y Conteo

El siguiente algoritmo lee una secuencia de caracteres, cuenta cuántos caracteres tiene en total y genera una secuencia nueva que sea una copia exacta de la original.

```text
ACCION CopiarYContarSecuencia ES
AMBIENTE
    sec_original, sec_copia: Secuencia de caracter
    v: caracter
    cantidad: entero
PROCESO
    cantidad := 0
    
    ARR(sec_original)     // Preparamos la secuencia de origen
    CREAR(sec_copia)      // Inicializamos la secuencia de destino
    
    AVZ(sec_original, v)  // Primer avance obligatorio antes de iterar
    
    // Evaluamos si NO hemos llegado a la marca de fin de secuencia (FDS)
    MIENTRAS NO FDS(sec_original) HACER
        cantidad := cantidad + 1
        
        ESC(sec_copia, v)     // Escribimos el caracter en la nueva secuencia
        AVZ(sec_original, v)  // Avanzamos para leer el siguiente caracter
    FIN_MIENTRAS
    
    // Al finalizar, siempre cerramos los flujos
    CERRAR(sec_original)
    CERRAR(sec_copia)
    
    ESCRIBIR("Proceso exitoso. Se copiaron ", cantidad, " caracteres.")
FIN_ACCION
```
