---
layout: default
title: Boilerplate
nav_order: 1
parent: Inicio
---

# Circuitos Secuenciales

Los circuitos secuenciales son sistemas lógicos digitales que funcionan sobre la base del tiempo. En estos sistemas las salidas no dependen solo de las combinaciones de las entradas actuales sino que también dependen del estado anterior del circuito.

Esta capacidad de considerar la historia previa permite que el sistema tenga memoria. Para su funcionamiento se utiliza el concepto de autómatas finitos o máquinas de estados.

## Autómatas Finitos

El comportamiento de estos autómatas se define mediante dos funciones matemáticas principales.

* La función de transición $G$ se encarga de actualizar el estado del autómata determinando el nuevo estado $Q_{t+1}$ a partir del estado anterior $Q_t$ y las entradas $E_t$.
* La función de salida $F$ establece la respuesta en el instante futuro basándose en los estímulos de entrada y en los estados almacenados previamente.

## Elementos de Memoria

Para recordar el estado anterior el circuito utiliza elementos de memoria denominados biestables o flip-flops. Estos dispositivos tienen dos estados estables y utilizan compuertas lógicas realimentadas para retener un bit de información.

* El Flip-Flop RS dispone de entradas Set y Reset pero presenta un estado de indeterminación si ambas entradas se activan en simultáneo.
* El Flip-Flop D utiliza una compuerta inversora para evitar la indeterminación y requiere obligatoriamente un reloj para sincronizar su funcionamiento.
* El Flip-Flop JK resuelve los fallos del modelo RS mediante una retroalimentación que invierte el valor almacenado cuando ambas entradas son uno.
* El Flip-Flop T funciona como un disparador que complementa o invierte su estado en cada ciclo de reloj si la entrada se encuentra activa.

## Herramientas de Diseño

El diseño de estos circuitos se realiza mediante el uso de tablas que describen su lógica de transición.

1. La Tabla de Estado es un resumen que detalla a qué estado pasará el circuito dadas las entradas y el estado presente.
2. La Tabla de Excitación indica los valores exactos que se deben aplicar a las entradas del flip-flop para lograr un cambio de estado deseado.

## Estructuras Complejas

A partir de los circuitos secuenciales básicos se construyen estructuras fundamentales para la computación.

* Los circuitos monoestables y astables permiten la manipulación del tiempo y la generación de oscilaciones para temporizadores.
* Los registros de desplazamiento se forman encadenando flip-flops para mover cadenas de datos binarios en distintas direcciones.
* Los contadores y descontadores binarios utilizan flip-flops para incrementar o disminuir valores en cada pulso de la señal de reloj.
