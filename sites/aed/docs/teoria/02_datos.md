---
layout: default
title: Los Datos y la Información
parent: Teoría
nav_order: 2
---

# Los Datos y la Información

El **dato** se define como la expresión general o representación simbólica de una entidad, como pueden ser letras del alfabeto, números, puntos o dibujos. Por sí solos, los datos elementales **no tienen la capacidad de transmitir ningún mensaje** ni de afectar a quien los recibe. Sin embargo, cuando estos datos de entrada son ingresados y procesados apropiadamente por un programa, se transforman y proveen **información importante que resulta fundamental para la toma de decisiones**.

### Tipos de Datos Elementales
Para poder clasificar y trabajar la información en el desarrollo de algoritmos, los datos simples se dividen en tres grandes categorías:

*   **Numéricos:** Son aquellos que representan una cantidad o valor determinado y permiten operar algebraicamente. Se dividen funcionalmente en dos subconjuntos:
    *   **Enteros:** Un conjunto finito de números completos que no tienen componentes fraccionarios o decimales y pueden ser negativos o positivos. Se utilizan para datos indivisibles, como representar la edad o la antigüedad de una persona.
    *   **Reales:** Un subconjunto que agrupa a los números que contienen obligatoriamente un punto decimal, sean positivos o negativos. Son ideales para datos continuos, como el peso de una persona o un salario.
*   **Alfanuméricos:** Son datos que representan información textual, englobando palabras, frases o símbolos. A diferencia de los numéricos, **no representan valor matemático alguno**, por lo que es imposible operar algebraicamente con ellos. Ejemplos de estos son el nombre o apellido de una persona, o una descripción textual.
*   **Lógicos (o Booleanos):** Son aquellos datos restrictivos que **solo pueden tomar uno de dos valores posibles: Falso o Verdadero**. Son sumamente útiles para establecer estados binarios, como determinar lógicamente si un número es primo, capturar el estado de un sensor en robótica o definir la luz de un semáforo peatonal.

### Estructuras de Datos Simples: Variables y Constantes
Para poder operar cálculos y procesar información, un programa de computadora necesita obligatoriamente un espacio de memoria para alojar esos datos temporalmente. Para esto se utilizan dos estructuras de datos simples:

*   **Variables:** Representan una dirección de memoria en donde se almacena un dato cuyo contenido **puede variar o modificarse dinámicamente a lo largo del desarrollo del algoritmo**. Lo más importante al declarar una variable es definir claramente su semántica (su significado en el contexto del problema), ya que el tipo de dato que se le asocie determinará qué operaciones se podrán realizar con ella. Un ejemplo del mundo real sería almacenar la cantidad de mensajes de WhatsApp que recibe un usuario, ya que este número variará constantemente en el tiempo. 
*   **Constantes:** Al igual que las variables, apuntan a una zona de memoria que resguarda un dato, pero con la característica inmutable de que **su contenido es estrictamente estático y no puede modificarse durante toda la ejecución del programa**. Se recomienda definirlas cuando un mismo valor fijo se utilizará varias veces dentro del algoritmo, centralizando su uso sin desperdiciar recursos. Un ejemplo clásico es definir un porcentaje de descuento fijo (ej. 10%) para aplicarlo a las ventas de una tienda en línea.
