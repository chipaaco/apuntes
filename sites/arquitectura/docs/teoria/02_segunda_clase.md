---
layout: default
title: Segunda clase
parent: Teoria
nav_order: 2
---

# Segunda clase

## TLDR

Sistemas Numéricos (Sistemas de Numeración y cambio de base, Aritmética binaria, Sistemas de Codificación y representación de los números); Codificación Binaria (Representación binaria de datos e instrucciones, Características de los espacios de representación, Aspectos de los sistemas de representación); Sistemas alfanuméricos (Características de los códigos, Principales sistemas de representación); Códigos redundantes (Características de los códigos, Códigos detectores, Códigos correctores);

## Sistemas Numéricos

El Teorema Fundamental de la Numeración es la base para entender cómo cualquier número, en cualquier sistema, se puede desarmar y expresar como una suma de potencias.

Elementos ($b$, $N$, $N \equiv$ `suma_potencias()`

### Sistemas de Numeración y cambio de base

- Decimal a $b$
    - Método de divisiones sucesivas entre la base b
    - Para números fraccionarios se realizan multiplicaciones sucesivas por la base b.
    - Consideración de restos mayores que 9 y Error de truncamiento

## No clasificado

Codificacion es B10 a B2, decodificación es B2 a B10

Dec a Bin = Divisiones sucesivas.

[Divisiones Sucesivas](https://gemini.google.com/share/e92e01a6d410)

Notacion en punto flotante.

- 236 x 10 ^3
- notacion cientifica, exp indica pos. coma
- la ALU (UAL), su reg. acumulador no trabaja con coma (usamo signo, matiza, exponente)

# Representación binaria de datos e instrucciones

| Operación | Código Binario |
| :--- | :--- |
| STOP | 0000 |
| SUM | 0001 |
| SUS | 0010 |
| DIV | 0011 |
| MUL | 0100 |
| SAI | 0101 |
| ALM | 0110 |

### Importancia de la codificación en la arquitectura de computadoras

La codificación de la información es el pilar fundamental que permite la comunicación entre el lenguaje humano y el hardware. En el ejemplo del registro de instrucción presentado, se observa cómo una operación compleja como SUMAR se traduce a una secuencia binaria específica `0001`. Sin esta estandarización, sería imposible que la unidad de control interprete qué circuito activar o qué dirección de memoria consultar.

Es importante aclarar que este ejemplo no forma parte de la tabla de contenidos principal del programa de estudio. El docente lo introdujo con el único fin de contextualizar cómo la teoría se aplica en la estructura física del procesador y para facilitar la comprensión de cómo los datos se transforman en acciones concretas dentro de la ALU.

### Desglose de la codificación presentada

* El campo `cod. oper.` con el valor `0001` identifica unívocamente la operación de suma para el sistema.
* El campo `cond. Direcc.` define el modo en que se accederá a los datos, en este caso, de forma directa.
* El campo `dir. oper.` contiene la dirección de memoria específica `000101` de donde se extraerá el valor a procesar.

Esta estructura demuestra que la codificación no es una asignación arbitraria de números, sino un protocolo rígido que garantiza que el acumulador y la memoria trabajen de forma sincronizada. La precisión en estos códigos evita errores de ejecución y permite la automatización de procesos lógicos complejos mediante señales eléctricas elementales.

## Sistemas alfanuméricos

Como se codifica de un alfabeto a binario

- BCD

## Códigos Redundantes

Dada una información (A a B) agregarle una redundancia para que punto B verifique si la información llegó bien o no.
