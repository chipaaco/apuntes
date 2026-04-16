---
layout: default
title: Operadores y Herramientas Lógicas
parent: Práctica
nav_order: 2
---

# Operadores y Herramientas

Herramientas para procesar datos y controlar la lógica.

### 1. Operadores

Se usan para calcular y comparar.

*   **Aritméticos:** `+`, `-`, `*`, `/`, `MOD` (resto), `DIV` (cociente entero).
*   **Relacionales:** `>`, `<`, `>=`, `<=`, `=`, `<>` (distinto).
*   **Lógicos:** `Y` (AND), `O` (OR), `NO` (NOT).

**Orden de evaluación:**
1. `NO`
2. `*`, `/`, `DIV`, `MOD`, `Y`
3. `+`, `-`, `O`
4. Relacionales (`=`, `<>`, etc.)

```text
AMBIENTE
    a, b: entero
    es_valido: lógico
PROCESO
    a := 10
    b := 15
    // Ejemplo combinado
    es_valido := (a < b) Y (b MOD a <> 0)
    ESCRIBIR(es_valido) // Muestra Verdadero
FIN_ACCION
```

### 2. Contadores, Acumuladores y Banderas

Tres herramientas clave para llevar la cuenta de lo que pasa.

*   **Contador:** Suma un valor constante (ej: `c := c + 1`). Sirve para contar eventos.
*   **Acumulador:** Suma un valor variable (ej: `s := s + precio`). Sirve para totales.
*   **Bandera (Flag):** Variable lógica que cambia de estado (ej: `b := V`). Indica si algo pasó.

**Pasos:** Inicializar (poner en 0 o F) → Usar (sumar o cambiar) → Mostrar resultado.

```text
ACCION EjemploHerramientas ES
AMBIENTE
    precio, total: numérico
    cant: entero
    paso_mil: logico
PROCESO
    total := 0    // Acumulador
    cant := 0     // Contador
    paso_mil := F // Bandera

    LEER(precio)
    
    cant := cant + 1
    total := total + precio
    
    SI precio > 1000 ENTONCES
        paso_mil := V
    FIN_SI
    
    ESCRIBIR("Total: ", total, " Cant: ", cant, " ¿Pasó los 1000?: ", paso_mil)
FIN_ACCION
```

### 3. Prueba de Escritorio

Es seguir el algoritmo a mano con una tabla para ver si funciona.

1.  Hacer una tabla con todas las variables como columnas.
2.  Seguir el código línea por línea.
3.  Anotar cada cambio de valor (el nuevo pisa al anterior).
4.  Probar con datos normales y con casos "límite" (ej: números negativos o cero).
