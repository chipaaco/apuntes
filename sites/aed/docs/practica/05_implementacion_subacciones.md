---
layout: default
title: Implementación de Subacciones
parent: Práctica
nav_order: 5
---

# Modularización (Subacciones)

La resolución de problemas complejos se facilita considerablemente si se utiliza la estrategia de "divide y vencerás", separándolos en problemas más pequeños cuya resolución se realiza mediante **sub-algoritmos** o **subacciones**. 

Las subacciones se escriben solamente una vez y se definen en el `AMBIENTE`, pero pueden ser invocadas múltiples veces durante el proceso del algoritmo principal.

### 1. Tipos de Subacciones

1. **Funciones:** Son sub-algoritmos que reciben datos, realizan un cálculo y **devuelven un único resultado** que se almacena en el mismo nombre de la función.
2. **Procedimientos:** Son sub-algoritmos que ejecutan una tarea específica pero **no devuelven un valor directo** en su nombre.

### 2. Paso de Parámetros

* **Formales:** Declarados en la cabecera de la subacción.
* **Actuales:** Datos reales enviados al invocar la subacción.

El paso puede ser **por valor** (copia del dato) o **por referencia** (dirección de memoria). En esta metodología, se prioriza el paso por valor.

### 3. Ejemplo Práctico

```text
ACCION ValidacionYCalculo ES
AMBIENTE
    // Variables globales
    usuario, clave, clave_bd: alfanumérico
    n1, n2, n3, mayor: entero

    // 1. Declaración de una FUNCIÓN
    FUNCION Mayorde3(a, b, c: entero): entero
        SI a > b Y a > c ENTONCES
            Mayorde3 := a
        SINO
            SI c > a Y c > b ENTONCES
                Mayorde3 := c
            SINO
                Mayorde3 := b
            FIN_SI
        FIN_SI
    FIN_FUNCION

    // 2. Declaración de un PROCEDIMIENTO
    PROCEDIMIENTO Login(usu, pass, valid: alfanumerico)
        SI pass = valid ENTONCES
            ESCRIBIR("Acceso autorizado a ", usu)
        SINO
            ESCRIBIR("Login inválido para ", usu)
        FIN_SI
    FIN_PROCEDIMIENTO

PROCESO
    ESCRIBIR("Ingrese usuario y clave:")
    LEER(usuario)
    LEER(clave)
    clave_bd := "Admin123"
    Login(usuario, clave, clave_bd) // Se invoca por su nombre
    
    ESCRIBIR("Ingrese 3 números enteros:")
    LEER(n1)
    LEER(n2)
    LEER(n3)
    mayor := Mayorde3(n1, n2, n3) // Invocación y asignación
    ESCRIBIR("El número mayor es: ", mayor)

FIN_ACCION
```
