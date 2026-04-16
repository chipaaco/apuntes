---
layout: default
title: Registros y Archivos
parent: Práctica
nav_order: 6
---

# Estructuras de Datos Complejas: Registros y Archivos

Cuando los tipos de datos simples no son suficientes para modelar la realidad, recurrimos a estructuras complejas para agrupar información afín.

### 1. Manejo de Registros

Un registro es una estructura de datos estática que contiene información referida a una misma entidad, compuesta por "campos".

*   **Campos contenidos:** El dato más pequeño e indivisible (ej: DNI).
*   **Campos continentes:** Formados por otros campos (ej: Fecha).

#### Ejemplo: Definición y carga de un Registro
Se utiliza el símbolo `=` para definir el nuevo tipo y el punto `.` (selector de campo) para acceder a sus miembros.

```text
ACCION FichaPersona ES
AMBIENTE
    FECHA = Registro
        dia: 1..31
        mes: 1..12
        anio: entero
    Fin Registro

    PERSONA = Registro
        dni: N(8)
        nombre: AN(50)
        nacimiento: FECHA // Campo continente anidado
    Fin Registro

    reg_persona: PERSONA
    
PROCESO
    ESCRIBIR("Ingrese DNI:")
    LEER(reg_persona.dni) 
    
    ESCRIBIR("Ingrese el Nombre:")
    LEER(reg_persona.nombre)

    ESCRIBIR("Ingrese año de nacimiento:")
    LEER(reg_persona.nacimiento.anio)
    
    ESCRIBIR("Registro cargado exitosamente.")
FIN_ACCION
```

### 2. Manejo de Archivos (Ficheros)

Un archivo es una colección de registros almacenados en memoria externa para lograr permanencia. El intercambio de datos se realiza de a **un registro completo a la vez**.

#### Instrucciones Elementales:
*   **ABRIR E/ (arch):** Modo Entrada (Lectura).
*   **ABRIR /S (arch):** Modo Salida (Escritura/Creación).
*   **LEER(arch, reg):** Trae del disco a la RAM.
*   **GRABAR(arch, reg):** Vuelca de la RAM al disco.
*   **FDA(arch):** Función lógica (Fin De Archivo).

#### Ejemplo: Proceso de Emisión (Listado)
Recorrido de un archivo secuencial para mostrar su información.

```text
ACCION ListadoAlumnos ES
AMBIENTE
    ALUMNO = Registro
        legajo: N(5)
        nombre: AN(30)
    Fin Registro

    arch_alu: Archivo de ALUMNO
    reg_alu: ALUMNO
    cantidad: entero
PROCESO
    cantidad := 0
    ABRIR E/ (arch_alu) 

    LEER(arch_alu, reg_alu) // Lectura adelantada

    MIENTRAS NO FDA(arch_alu) HACER
        cantidad := cantidad + 1
        ESCRIBIR("Legajo N° ", reg_alu.legajo, " | Alumno: ", reg_alu.nombre)
        
        LEER(arch_alu, reg_alu) // Siguiente registro
    FIN_MIENTRAS

    ESCRIBIR("Total de alumnos: ", cantidad)
    CERRAR(arch_alu)
FIN_ACCION
```
