---
layout: default
title: Primera clase
nav_order: 1
parent: Teoria
---

# Primera clase

## TLDR

Definiciones (Stallings, De Freitas y Yáber, Maruokefalidis); Arquitectura multinivel (Tenembaum); Modelos Lógicos de Componentes (Stallings: Organo Control, Morris Mano: Memoria a UC, Meinadier: Órgano Canal). Evolución del cómputo en generaciones;

## Definiciones

Antes de avanzar, resulta indispensable ubicar la material contextualizando conceptos fundamentales. El objetivo es comprender qué significa la arquitectura de computadoras y establecer su propósito.

## William Stallings: Computadora
La define como una máquina digital electrónica programable para el tratamiento automático de la información, capaz de recibirla, operar sobre ella mediante procesos determinados y suministrar los resultados de tales operaciones.

## Definiciones de Arquitectura

El autor **Freitas y Yáber (2015)** plantea que una arquitectura es un modelo de un sistema dentro de un contexto específico, que representa los componentes necesarios para desarrollar el sistema desde una perspectiva particular.

El profesor asocia esta definición a la arquitectura de edificios. Así como un edificio comercial tiene una distribución distinta a una vivienda, el contexto de un computador justifica decisiones técnicas. La arquitectura establece esos lineamientos para crear un modelo real definiendo órganos, relaciones y capacidades en términos de costo, performance y tiempo de respuesta.

La definición del **Profesor Maurokefalidis** indica que una arquitectura es aquella que determina el criterio lógico necesario de diseño para definir y relacionar los componentes de un Ordenador sin perder de vista su campo de aplicación.

## Arquitectura Multinivel

Andrew Tanenbaum plantea que el diseño de una computadora se comprende mejor dividiéndolo en capas relacionadas, donde cada una aporta valor a la inferior y se comunica con la superior. Este modelo se divide en dos grandes bloques.


### Macroarquitectura
* Aplicaciones de usuario
* Lenguajes de alto nivel
* Lenguaje ensamblador
* Sistema operativo

### Microarquitectura
* Máquina convencional o lenguaje de máquina
* Microprogramación (indica a la lógica digital cómo ejecutar las operaciones elementales)
* Lógica digital (diseño abstracto de circuitos combinacionales y secuenciales)
* Nivel Físico

## Modelos Lógicos de Componentes
Para modelar lógicamente las partes de una arquitectura se presentaron las visiones de tres autores principales.

* Modelo de William Stallings que plantea la existencia de un órgano de control que funciona como director de orquesta, coordinando de manera interactiva la memoria central, el procesador de datos y los canales de entrada o salida.
* Modelo de Morris Mano que utiliza un esquema tradicional centrado en la Unidad de Control, la unidad de cálculo y la memoria central, estableciendo que nada procesa la unidad aritmético lógica del exterior si primero no se aloja en la memoria central.
* Modelo de Jean Pierre Meinadier que amplía el esquema anterior añadiendo formalmente el órgano canal, indispensable para coordinar y transportar los datos entre el exterior y la memoria central.

## Evolución y Estructura

Un análisis histórico permite entender el desarrollo de los sistemas de cálculo actuales.

* La Generación Cero se extiende hasta 1945 e incluye sistemas mecánicos o electromecánicos como ábacos, calculadoras mecánicas y sistemas basados en relés.
* La Primera Generación abarca desde 1940 hasta 1955 utilizando tubos de vacío en máquinas enormes y lentas, donde la programación se hacía en lenguaje de máquina y un solo grupo gestionaba todo el proceso.
* La Segunda Generación se sitúa entre 1955 y 1965 introduciendo los transistores, lo que permitió separar roles técnicos, operar mainframes en salas acondicionadas y crear el proceso por lotes.
* La Tercera Generación comprende desde 1965 hasta 1980 destacándose por la incorporación de circuitos integrados que mejoraron costo y desempeño, junto con la llegada del IBM 360, discos duros, multiprogramación y tiempo compartido.
* La Cuarta Generación inicia en 1980 utilizando integración a gran escala y abarca la evolución de procesadores Intel y arquitecturas RISC, el surgimiento de interfaces gráficas, sistemas operativos como Windows, UNIX o Linux y el trabajo en red.
* La Quinta Generación aborda la computación cuántica basándose en la superposición de estados y el cúbit como unidad de información, requiriendo temperaturas cercanas al cero absoluto para procesar múltiples caminos simultáneamente en aplicaciones de inteligencia artificial, biomedicina y sistemas financieros.
