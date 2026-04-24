---
layout: default
title: Segunda clase
parent: Teoria
nav_order: 2
---

# Representación y Codificación de la Información (Clase 2)

## Codificación y Decodificación
Propuesto por **la teoría general de codificación**.

* **Versión extendida:** Un sistema de codificación establece una ley de correspondencia entre los símbolos de un conjunto A y los símbolos de un conjunto B. Esto permite que un mensaje codificado en uno de ellos pueda ser convertido al otro formato respetando las reglas impuestas por dicha ley. La decodificación es el proceso inverso, que marca el camino de regreso utilizando la misma ley de correspondencia para reconstruir el mensaje original, como ocurre al conocer el factor de rotación en el cifrado César.
* **Versión simplificada:** Es traducir información usando una regla o tabla específica para que la computadora la entienda, teniendo siempre una manera de revertir esa traducción para volver al dato original.

## Sistemas Numéricos y Representación
Propuesto por **el enfoque matemático de la arquitectura**.

* **Versión extendida:** Implica representar la información en la máquina utilizando un alfabeto compuesto por $b$ símbolos, donde cada dígito tiene un peso relativo según su notación posicional. Incluye todas las conversiones de cambio de base (por ejemplo, de decimal a binario a través de divisiones sucesivas) y las operaciones de la aritmética binaria. Se agrupan bajo unidades de bits, bytes y palabras.
* **Versión simplificada:** Son los métodos matemáticos necesarios para que los números que nosotros usamos (como la base 10) se conviertan al lenguaje de la máquina (ceros y unos).

## Aritmética Digital: Coma Fija y Coma Flotante
Propuesto para **la operatoria interna de la ALU**.

* **Versión extendida:** La representación en coma flotante utiliza un formato similar a la notación científica, organizando el número en tres partes: signo, mantisa y exponente. Esto es fundamental porque el registro acumulador dentro de la Unidad Aritmético Lógica (ALU) no puede operar matemáticamente con el carácter tipográfico de la "coma". El exponente es el encargado de indicar de forma lógica la posición en la que debe ubicarse la coma.
* **Versión simplificada:** Es una técnica para guardar números decimales en la computadora indicando matemáticamente dónde va la coma, lo cual evita que la máquina tenga que guardar el dibujo de la coma y arruine sus cálculos.

## Códigos de Representación Alfanumérica
Propuesto para **el ingreso de datos del usuario**.

* **Versión extendida:** Son códigos que establecen la relación biunívoca necesaria para que una computadora digital, que procesa solamente dígitos binarios, interprete el lenguaje del usuario, ya sean caracteres numéricos, alfabéticos o especiales. Cuando se teclea un símbolo, la memoria central utiliza un "programa de conversión" para traducirlo a una cadena binaria. Existen tablas de longitud fija como **ASCII** o **EBCDIC** (de 8 bits), y estándares más evolucionados como **UNICODE**, que fue diseñado empleando 16 bits para superar limitaciones previas y abarcar todos los idiomas vivos del mundo.
* **Versión simplificada:** Son "diccionarios" internos (como el ASCII o el Unicode) que le dicen a la máquina qué grupo exacto de ceros y unos debe usar para guardar cada letra o símbolo que el usuario escribe.

## Códigos de Representación Decimal (BCD)
Propuesto para **optimizar cálculos y almacenamiento decimal**.

* **Versión extendida:** El Código Decimal Codificado en Binario (BCD) permite representar los números decimales del 0 al 9 directamente en bloques reducidos de 4 bits. Existen diversas variantes con aplicaciones específicas:
  * **BCD Puro o Natural (8421):** Utiliza los pesos tradicionales del sistema binario (8, 4, 2, 1) y sus valores válidos van desde 0000 hasta 1001.
  * **BCD Empaquetado y Desempaquetado:** El formato empaquetado agrupa dos números en un solo byte (ocupando 4 bits cada uno) para ahorrar espacio y realizar cálculos dentro de la ALU. El formato desempaquetado ocupa 8 bits por dígito (separados en zona y dígito) y se usa para recibir información directa desde los periféricos.
  * **BCD Exceso en 3:** Es un código **autocomplementario** y extremadamente óptimo. Cada extremo binario de la tabla muestra automáticamente el complemento del otro (cambiando ceros por unos y viceversa), permitiendo a la máquina conocer complementos sin hacer cuentas lógicas.
  * **Código AIKEN (2421):** Utiliza los pesos 2-4-2-1 y también es autocomplementario. En los casos en que un número tenga doble representación posible (como ocurre con el 5), se debe optar por la combinación que cambie un solo dígito respecto al número anterior para asegurar la regla de autocomplementación.
* **Versión simplificada:** Es una forma de escribir los números decimales usando solo paquetitos de 4 ceros y unos. Algunos de estos códigos (como Exceso en 3 o Aiken) son "mágicos" porque, al invertir sus ceros por unos, te dan gratis el número complementario sin que la computadora deba hacer ningún esfuerzo matemático.

## Códigos Redundantes y Control de Errores
Propuesto para **la transmisión segura de la información**.

* **Versión extendida:** Dado un paquete de información que viaja de un punto emisor a un punto receptor, se le agrega deliberadamente una redundancia (bits adicionales). Esto permite que el receptor, mediante una ecuación matemática, verifique si la información llegó de manera correcta o si el ruido del canal la alteró. Existen diferentes tipos, como la **paridad par e impar** (que suma un bit extra para que el conteo de unos o ceros sea siempre par o impar), el **código entrelazado**, y el **Código de Hamming**. Hamming se destaca porque genera su código garantizando una distancia mínima de 3, requisito matemático ineludible para poder no solo detectar errores, sino también ubicarlos y corregirlos.
* **Versión simplificada:** Consiste en enviarle "datos extra" a la computadora de destino para que ella misma pueda revisar si el mensaje llegó roto o alterado, y si es posible, arreglarlo sola (como hace el código de Hamming) o pedir que se envíe de nuevo.

## Representación Física de las Señales
Propuesto como **la relación entre la lógica y la electricidad**.

* **Versión extendida:** Internamente, el hardware de conmutación debe transformar el diseño abstracto de la pizarra lógica a un fenómeno físico real lidian con voltajes, temperatura y humedad. Se establece una franja eléctrica de trabajo; por ejemplo, si un impulso posee entre 0 y 2 voltios se representará el estado "0", mientras que un impulso entre 3 y 4 voltios representará el estado "1".
* **Versión simplificada:** Es la forma en que la computadora pasa los ceros y unos a electricidad de verdad, usando niveles de energía diferentes (como poca energía para un cero y mucha para un uno) sin que se mezclen.
