---
layout: default
title: Estructura de un Algoritmo
parent: Práctica
nav_order: 1
---

# Estructura de un Algoritmo

Guía rápida de sintaxis básica en pseudocódigo.

### 1. Estructura Básica

Un algoritmo se divide en tres bloques principales:

```text
ACCION Nombre_Algoritmo ES
AMBIENTE
    // Declaración de variables
PROCESO
    // Lógica y operaciones
FIN_ACCION
```

### 2. Tipos de Datos y Variables

Se declaran en el **AMBIENTE**.

*   **Entero / Numérico:** Números (`N(8)` para longitud fija).
*   **Alfanumérico:** Texto y caracteres.
*   **Lógico:** Verdadero o Falso.

```text
AMBIENTE
    edad, dni: N(8)
    precio: numérico
    nombre: alfanumerico
    es_mayor: logico
```

### 3. Instrucciones Básicas

*   **LEER(var):** Entrada de datos.
*   **ESCRIBIR("msg", var):** Salida de datos (o `ESC`).
*   **:=** Asignación de valores.

```text
PROCESO
    ESCRIBIR("Ingrese edad:")
    LEER(edad)
    doble := edad * 2
    ESCRIBIR("El doble es: ", doble)
```

### 4. Ejemplos Integradores

**Cálculo simple:**
```text
ACCION CalculaDoble ES
AMBIENTE
    a, doble: entero
PROCESO
    ESCRIBIR("Ingrese número:")
    LEER(a)
    doble := a * 2
    ESCRIBIR("Resultado: ", doble)
FIN_ACCION
```

**Venta con descuento:**
```text
ACCION Ventas ES
AMBIENTE
    cant, precio, total: numérico
    nom: alfanumérico
    dscto = 0.10 // Constante
PROCESO
    LEER(nom, cant, precio)
    total := (cant * precio) * (1 - dscto)
    ESCRIBIR("TOTAL: $", total)
FIN_ACCION
```
