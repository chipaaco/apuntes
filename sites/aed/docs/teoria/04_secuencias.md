---
layout: default
title: Tratamiento de Secuencias
parent: Teoría
nav_order: 4
---

# Tratamiento de Secuencias

Una **secuencia** es un conjunto de datos relacionados entre sí, cuyo tamaño o longitud no es fijo, sino que puede variar dinámicamente durante la ejecución del algoritmo. Para que un conjunto de datos sea considerado formalmente como una secuencia, debe cumplir estrictamente con las siguientes características:
*   **Existencia del primer elemento:** Permite el acceso inicial y posterior a los demás elementos.
*   **Relación de sucesión:** Todo elemento de la secuencia (salvo el último) precede a otro, su sucesor, lo que permite recorrer la estructura lógicamente hasta alcanzar el final.
*   **Finitud:** Toda secuencia debe estar acotada por una condición de fin para evitar caer en ciclos infinitos.
*   **Existencia del último elemento:** Debe existir un indicador claro de fin de secuencia (FDS) que detenga el procesamiento.

Para procesar analíticamente estas secuencias, la algoritmia recurre al concepto de la **Máquina de Caracteres**. Se trata de una máquina abstracta compuesta por una "ventana" (que permite observar los datos de a un elemento por vez), un botón de "arrancar" (para iniciar el tratamiento) y un botón de "avanzar" (para recorrer la secuencia de izquierda a derecha de forma secuencial e individual).

### Clasificación de las Secuencias
Para elegir correctamente cómo operar con una secuencia, estas se clasifican bajo dos grandes criterios:

**Por su contenido:**
*   **Puras:** Todos los elementos son exactamente del mismo tipo y el último elemento de la secuencia es tratado de igual forma que los demás. Lógicamente, se suelen manejar utilizando estructuras iterativas de tipo Post-Test.
*   **Impuras:** Son secuencias donde existe una marca o elemento extraño al final que no debe ser procesado como dato, sino que sirve únicamente para indicar el final (por ejemplo, un punto al final de una oración o una marca de fin de archivo). Se operan típicamente con estructuras de tipo Pre-Test.
*   *Nota:* Según la naturaleza del dato elemental, pueden estar compuestas por números, caracteres o registros enteros.

**Por su procesamiento (cantidad de elementos):**
*   **Definidas:** Se conoce de antemano el número exacto de elementos que conforman la secuencia, lo que permite recorrerlas fácilmente empleando una estructura repetitiva manejada por contador (ciclo "Para").
*   **Indefinidas:** No se conoce la cantidad de elementos. Su recorrido obliga a evaluar continuamente si se ha llegado al final mediante estructuras iterativas Pre-Test o Post-Test.

### Relaciones entre Subsecuencias
A menudo, dentro de una secuencia mayor, existen subconjuntos de datos consecutivos que representan una entidad en sí misma, denominados **subsecuencias**. Ejemplos clásicos de subsecuencias son una *palabra* (delimitada por espacios en blanco), una *oración* (delimitada por un punto) o un número de documento de identidad con un tamaño específico. 

Las subsecuencias pueden interactuar y relacionarse dentro de la secuencia principal de dos maneras fundamentales:

1.  **Subsecuencias Enlazadas:** Están dispuestas una a continuación de la otra de forma lineal. La relación de enlace dicta que el inicio de una subsecuencia está determinado exactamente por el fin de la subsecuencia anterior. Por ejemplo, un registro donde finaliza un nombre (marcado con un guion) e inmediatamente después comienzan los 8 dígitos del DNI.
2.  **Subsecuencias Jerárquicas:** Se identifican mediante una estricta relación de **inclusión o pertenencia**. En este modelo, una subsecuencia continente engloba a otras más pequeñas, por lo que el inicio o fin de la subsecuencia mayor determina ineludiblemente el inicio o fin de las que están incluidas en ella. Un ejemplo natural de esta jerarquía sería analizar un texto donde la secuencia principal contiene a la subsecuencia *oración*, y esta a su vez contiene a la subsecuencia *palabra*.
