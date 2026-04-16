---
layout: default
title: Estructuras de Control
parent: Teoría
nav_order: 3
---

# Estructuras de Control

Las estructuras de control tienen una finalidad bastante definida dentro de la algoritmia: **señalar el orden exacto en el que tienen que sucederse los pasos de un algoritmo**. A nivel lógico, se caracterizan por tener siempre un único punto de entrada y un único punto de salida, y pueden estar compuestas por sentencias simples u otras estructuras de control anidadas. 

Para poder diseñar soluciones eficientes, estas estructuras se clasifican en tres grandes categorías fundamentales:

#### 1. Estructuras Secuenciales
Representan la forma de programación más natural y básica. En una estructura secuencial, **la ejecución comienza con la primera sentencia del algoritmo y prosigue hasta la última, ejecutando cada instrucción una sola vez**. Las tareas se suceden paso a paso, de tal modo que el resultado o salida de una operación se convierte directamente en la entrada de la siguiente, y así sucesivamente hasta el final del proceso. El hecho de que se ejecuten secuencialmente implica que nunca se ejecutará más de una acción al mismo tiempo.

#### 2. Estructuras Condicionales
Dado que no todos los problemas de la vida real pueden resolveras de manera lineal, las estructuras condicionales aparecen cuando es estrictamente necesario tomar una decisión. Permiten controlar qué sentencias se ejecutan y en qué momentos, desviando el flujo del programa según ciertas condiciones lógicas. Se dividen en tres tipos:

*   **Simples:** Es la ejecución condicional de una acción. Se evalúa una condición lógica y, **sólo si el resultado es verdadero, el conjunto de acciones se ejecuta**. Si el resultado es falso, el flujo del programa simplemente ignora esas instrucciones y sigue adelante.
*   **Alternativas (Dobles):** Permiten implementar caminos excluyentes. Si se verifica una determinada condición, se ejecuta una serie de instrucciones (bloque 1); pero **si la condición no se cumple, el programa ejecuta automáticamente otra serie de acciones alternativas** (bloque 2).
*   **Múltiples (Selección):** Se utilizan con frecuencia cuando existen más de dos elecciones posibles. En lugar de anidar múltiples condiciones simples, se **evalúa una variable específica contra distintos resultados posibles**, ejecutando una serie de instrucciones puntuales dependiendo de con qué valor coincida.

#### 3. Estructuras Repetitivas (Ciclos)
Durante la creación de programas, es muy común encontrarse con operaciones que deben repetirse muchas veces. Las estructuras que repiten una secuencia de instrucciones se denominan **bucles**, y cada una de sus repeticiones se llama **iteración**. Todo bucle tiene asociada una condición lógica que determina cuándo se debe repetir y cuándo debe finalizar. Es vital diseñar bien estas condiciones para evitar los **bucles infinitos**, los cuales ocurren cuando la condición de finalización no se llega a cumplir nunca.

Teóricamente, se diferencian en tres tipos según su comportamiento:

*   **Pre-Test (Indefinidas):** El cuerpo del bucle se repite siempre que se cumpla la condición. Su principal característica teórica es que **la evaluación lógica se realiza antes de ejecutar las acciones**. Debido a esto, si la condición es falsa desde el inicio, el bucle **puede ejecutarse 0 o más veces**. Se considera una estructura indefinida porque no se conoce de antemano la cantidad de iteraciones.
*   **Post-Test (Indefinidas):** A diferencia del Pre-Test, la evaluación de la condición se encuentra al final de la estructura. Esto garantiza teóricamente que las acciones dentro del bucle **se ejecuten siempre al menos 1 vez** (1 o más veces), independientemente de cuál sea el valor de la condición inicial. 
*   **Manejadas por Contador (Definidas):** Se aplican cuando **se conoce de antemano la cantidad exacta de veces que se va a iterar**. El final del bucle no está gobernado por un evento externo, sino que está estrictamente controlado por una variable "contador" que se incrementa o decrementa automáticamente según un límite inicial y final establecido. Al ser de carácter automático, el contador usado en esta condición no requiere inicialización previa por parte del programador.
