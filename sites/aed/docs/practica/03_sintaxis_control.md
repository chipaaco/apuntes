---
layout: default
title: Estructuras de Control
parent: Práctica
nav_order: 3
---

# Estructuras de Control

Controlan el flujo del programa: decisiones y repeticiones.

### 1. Condicionales (Decisiones)

#### A. SI ... ENTONCES ... SINO
Evalúa una condición y elige un camino.

```text
SI suma > 0 ENTONCES
    ESCRIBIR("Positivo")
SINO
    SI suma < 0 ENTONCES
        ESCRIBIR("Negativo")
    SINO
        ESCRIBIR("Es Cero")
    FIN_SI
FIN_SI
```

#### B. SEGÚN ... HACER
Para múltiples opciones sobre una misma variable.

```text
SEGÚN edad HACER
    < 18:  ESC("Menor")
    < 50:  ESC("Adulto")
    OTROS: ESC("Mayor")
FIN_SEGUN
```

### 2. Repetitivas (Bucles)

#### A. MIENTRAS (Pre-test)
Evalúa **antes** de entrar. Puede ejecutarse 0 veces.

```text
cont := 1
MIENTRAS cont <= n HACER
    suma := suma + cont
    cont := cont + 1 // Importante: actualizar control
FIN_MIENTRAS
```

#### B. REPETIR ... HASTA QUE (Post-test)
Evalúa al **final**. Se ejecuta al menos 1 vez.

```text
REPETIR
    ESCRIBIR("Clave:")
    LEER(intento)
HASTA QUE intento = clave_correcta
```

#### C. PARA (Ciclo definido)
Se usa cuando sabés exactamente cuántas veces repetir. El contador es automático.

```text
PARA i := 1 HASTA n HACER
    suma := suma + i
FIN_PARA
```

### 3. Resumen de Diferencias

| Estructura | ¿Cuándo usar? | Evaluación | Cant. Mínima |
| :--- | :--- | :--- | :--- |
| **Mientras** | No sé cuántas veces (0 a N) | Al inicio | 0 |
| **Repetir** | No sé cuántas veces (1 a N) | Al final | 1 |
| **Para** | Sé exactamente cuántas veces | Automática | N |
