---
layout: default
title: Estructuras de Memoria Interna y Dinámica
parent: Teoría
nav_order: 7
---

# Estructuras de Memoria Interna y Dinámica

Las estructuras de datos permiten organizar y procesar la información en la memoria interna de la computadora, y se dividen según su comportamiento en estáticas y dinámicas.

**1. Arreglos: Vectores y Matrices (Características Estáticas)**
Un arreglo es una estructura de datos de memoria interna de **característica estática**, lo que significa que se declara en el ambiente del algoritmo con un tamaño definido que no puede alterarse durante el proceso de ejecución. Se dividen principalmente según sus dimensiones:
*   **Vectores (Unidimensionales):** Son un tipo de dato estructurado formado por una colección finita y ordenada de elementos del mismo tipo.
*   **Matrices (Bidimensionales):** Constituyen un espacio de memoria que permite almacenar colecciones de elementos del mismo tipo, organizados linealmente acorde a una dimensión no unitaria (filas y columnas).

**2. Listas Lineales: Pilas, Colas y Listas Enlazadas (Estructuras Dinámicas)**
A diferencia de los arreglos estáticos, las listas lineales son **estructuras dinámicas** que permiten que los elementos crezcan o decrezcan durante la ejecución del programa y sus elementos no necesitan estar consecutivos en la memoria. El paso de un elemento a otro se realiza mediante **punteros**, que son variables que contienen direcciones de memoria.
*   **Pilas (LIFO):** Estructura en la que el acceso a sus elementos es del tipo **LIFO** (*Last In, First Out* - último en entrar, primero en salir). Se maneja con dos operaciones básicas: apilar (agregar un elemento) y desapilar (retirar el último elemento).
*   **Colas (FIFO):** Estructura del tipo **FIFO** (*First In, First Out* - primero en entrar, primero en salir). La inserción de elementos se realiza por un extremo y la extracción por el extremo opuesto.
*   **Listas Simplemente y Doblemente Enlazadas:** En las listas simples, cada nodo contiene información y un puntero hacia el siguiente objeto. Dependiendo de cómo apunten los enlaces hacia los antecesores o sucesores, las listas también pueden ser doblemente enlazadas.

**3. Árboles: Árboles Binarios de Búsqueda (ABB) y Árboles AVL**
Los árboles son estructuras homogéneas, **dinámicas y no lineales** (ya que cada elemento puede tener más de un sucesor) con una definición jerárquica y recursiva.
*   **Árboles Binarios de Búsqueda (ABB):** Son árboles organizados de forma tal que facilitan la búsqueda de elementos. La regla principal es que, para cada nodo, todos los elementos del subárbol izquierdo son menores que el nodo raíz, y los del subárbol derecho son mayores.
*   **Árboles AVL (Balanceados):** Son árboles binarios de búsqueda que cumplen con una propiedad de equilibrio estricta: la diferencia entre las alturas de los subárboles izquierdo y derecho de cualquier nodo debe ser, como máximo, de 1. Este equilibrio asegura que las operaciones sean más eficientes y rápidas. 

**4. Recursividad: Casos Base y Recursivos vs. Iteración**
La recursividad es una alternativa al uso de ciclos repetitivos en la cual los módulos hacen llamadas a sí mismos.
*   **Componentes de la función recursiva:** Se divide en un **caso base**, que es una solución simple para un caso particular que detiene las llamadas; y un **caso recursivo**, que es la solución que vuelve a invocar a la función original con parámetros que se van acercando gradualmente al caso base.
*   **Recursión vs. Iteración:** Mientras que la iteración utiliza un ciclo explícito que termina cuando la condición del ciclo falla, la recursión utiliza repetidas invocaciones a un método y culmina al reconocer el caso base. Ambas técnicas tienen la posibilidad de caer en ciclos infinitos si no se controlan debidamente, pero la recursión suele adaptarse de forma más natural a estructuras de datos recursivas, como los árboles.
