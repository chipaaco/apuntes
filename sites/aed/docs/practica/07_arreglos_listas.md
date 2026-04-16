---
layout: default
title: Arreglos y Listas
parent: Práctica
nav_order: 7
---

# Estructuras de Memoria Interna: Arreglos y Listas Dinámicas

A diferencia de las variables simples, estas estructuras permiten agrupar múltiples valores en la memoria RAM, ya sea de forma estática o dinámica.

### 1. Estructuras Estáticas: Arreglos (Vectores y Matrices)

Un arreglo es una estructura homogénea y de tamaño **estático** (definido en el ambiente). Para acceder a sus elementos se utiliza un índice entre corchetes: `A[i]`.

#### Ejemplo: Carga y Recorrido de un Vector
```text
ACCION SumaArreglo ES
AMBIENTE
    T_Numeros = arreglo [1..50] de entero
    vec_numeros: T_Numeros
    i, suma: entero
PROCESO
    suma := 0
    PARA i := 1 hasta 50 HACER
        ESCRIBIR("Ingrese un número para la posición ", i)
        LEER(vec_numeros[i])
        suma := suma + vec_numeros[i]
    FIN_PARA
    ESCRIBIR("La suma de los números es: ", suma)
FIN_ACCION
```

### 2. Estructuras Dinámicas: Punteros y Listas Lineales

Una **Lista Lineal** es dinámica: crece o se acorta nodo a nodo. Utiliza **Punteros** (variables que guardan direcciones de memoria) para enlazar los elementos.

*   **NUEVO(p):** Reserva espacio para un nodo.
*   **NIL:** Representa el valor nulo (lista vacía).
*   **DISPONER(p):** Libera el espacio de memoria.

#### Ejemplo: Carga de una Lista (Tipo Pila/LIFO)
En una Pila, el último elemento en entrar es el primero en salir. Usamos el símbolo `^` para acceder al contenido del puntero.

```text
ACCION ListaTipoPila ES
AMBIENTE
    Puntero_A_Nodo = puntero a NODO
    NODO = registro
        dato: entero
        prox: Puntero_A_Nodo
    Fin registro

    prim, p: Puntero_A_Nodo
    valor: entero
PROCESO
    prim := nil // Inicializamos lista vacía
    
    ESCRIBIR("Ingrese el valor a guardar (0 para terminar):")
    LEER(valor)
    
    MIENTRAS valor <> 0 HACER
        NUEVO(p)         // Creamos nodo
        p^.dato := valor // Asignamos dato
        p^.prox := prim  // Enlazamos al anterior primero
        prim := p        // El nuevo nodo es ahora el primero
        
        ESCRIBIR("Siguiente valor:")
        LEER(valor)
    FIN_MIENTRAS
    
    ESCRIBIR("Lista cargada exitosamente.")
FIN_ACCION
```
