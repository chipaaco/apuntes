---
layout: default
title: Introducción a la Algoritmia
parent: Teoría
nav_order: 1
---

# Introducción a la Algoritmia

Formalmente, **un algoritmo es una secuencia finita de instrucciones, reglas o pasos que describen de modo preciso las operaciones que una computadora debe realizar para ejecutar una tarea determinada en un tiempo finito**. Aunque un algoritmo tiene fuertes semejanzas con un programa de computadora, se diferencian en su lenguaje, ya que el algoritmo debe ser siempre independiente del lenguaje de programación o del sistema físico que lo ejecute.

Las características fundamentales que debe cumplir todo algoritmo detallado en las fuentes son las siguientes:
*   **Preciso:** Debe indicar claramente el orden de realización de cada paso lógico sin incurrir en ambigüedades.
*   **Definido:** Para una misma entrada de datos, el algoritmo siempre debe producir exactamente la misma salida (es decir, si se ejecuta dos veces, se debe obtener el mismo resultado).
*   **Finito:** Su ejecución lógica debe terminar en algún momento determinado, por lo que obligatoriamente posee un número finito de pasos.
*   **Correcto:** Tiene que resolver correctamente el problema central para el que fue diseñado, proporcionando siempre el resultado esperado.

Estructuralmente, la definición de un diseño de algoritmo se compone de tres partes esenciales: **Entradas** (definir los datos iniciales con los que se va a trabajar), **Procesos** (las operaciones necesarias para transformar esos datos) y **Salidas** (el resultado final validado).

### Conceptos Fundamentales: Proceso, Acción y Estado

Para entender a nivel lógico el funcionamiento de la algoritmia, resulta de gran importancia conocer tres conceptos fundamentales expuestos en las fuentes:
*   **Proceso:** Es catalogado como la unidad más pequeña de trabajo, caracterizado principalmente por la ejecución constante de una secuencia de instrucciones junto con un estado actual y recursos asociados a la misma.
*   **Acción:** Se trata de un acontecimiento originado por un actor que se produce en un periodo de tiempo finito, genera un resultado definido y provoca internamente un cambio de estado en el programa.
*   **Estado:** El estado general de un sistema está determinado únicamente por la observación detallada de sus elementos en un instante de tiempo dado. En un sistema se distinguen el **Estado Inicial** (instante exacto en el que comienza la acción), el **Estado Final** (al terminar de ejecutar la acción) y los **Estados Intermedios** (todos los observados durante la ejecución), siendo estos últimos muy importantes para lograr reconocer qué pequeñas acciones integran a los bloques más complejos.

Adicionalmente, las acciones algorítmicas se clasifican de acuerdo con su nivel de complejidad operativa de la siguiente manera:
*   **Acciones Simples:** Son aquellas instrucciones elementales y básicas que se ejecutan en una única operación directa. Ejemplos clásicos de estas son las sentencias lógicas de asignación, las expresiones algebraicas puras y las acciones elementales como operaciones de lectura o escritura.
*   **Acciones Complejas:** Son aquellas que agrupan o combinan sistemáticamente varias acciones simples y que no se pueden realizar directamente, requiriendo para ello estructuras formales de control para su ejecución correcta. Las sentencias condicionales (donde se toman decisiones) y los ciclos iterativos son ejemplos fundamentales de esta categoría.

### Metodologías de Resolución: Programación Estructurada y Diseño Top-Down

A la hora de idear y construir un nuevo algoritmo eficiente, las fuentes sugieren un método secuencial compuesto por fases lógicas:
1. Entender claramente el problema central subyecente y la necesidad real de una solución, identificando de manera explícita cuáles serán los resultados que se esperan obtener al final del procedimiento.
2. Individualizar, analizar y definir con exactitud los datos de entrada requeridos con los que la máquina va a trabajar desde el inicio.
3. Plantear estratégicamente la lógica de los procesos que serán estrictamente necesarios para transformar esa información de entrada en los datos de salida solicitados, finalizando con la validación total del sistema creado.

En el ámbito estricto del diseño moderno de algoritmos destaca fuertemente la **Programación Estructurada**, una técnica y método de perfil científico ampliamente utilizado para estructurar código y eliminar por completo la práctica de programar a base de ensayo y error. Esta metodología basa todos sus principios en conformar algoritmos que posean de manera estricta solo un punto de entrada y uno de salida, garantizando que todas las sentencias sean accesibles y prohibiendo totalmente el uso de ciclos o bucles infinitos. El teorema fundamental de esta rama tecnológica determina que **todo algoritmo estructurado debe construirse obligatoriamente utilizando solo tres grandes tipos de control de secuencia:** estructuras secuenciales, estructuras alternativas (de decisión o condicionales) y estructuras repetitivas (ciclos o bucles).

Por otro lado, la resolución sistemática de problemas informáticos que ostentan una mayor complejidad se facilita al apoyarse en el **diseño "top-down"** (o diseño descendente en nuestro ámbito). Este enfoque conceptual consiste fundamentalmente en tomar un problema y descomponerlo en niveles, etapas o "subproblemas" que presenten características cada vez más sencillas, de manera tal que el dato resultante de una de las fases sirva automáticamente como entrada obligatoria de la fase siguiente. Esta estrategia permite aplicar de manera exitosa el conocido principio algorítmico de "divide y vencerás" mediante el uso focalizado de subacciones modulares.
