---
layout: default
title: Estructuras de Datos Complejas
parent: Teoría
nav_order: 6
---

# Estructuras de Datos Complejas

Aquí tienes el desarrollo del sexto artículo teórico, enfocado en cómo se agrupa, almacena y procesa la información a gran escala.

### Estructuras de Datos Complejas: Registros y Archivos

Cuando la información a procesar sobrepasa la simplicidad de los datos elementales, es necesario agruparla y almacenarla de manera estructurada. Para ello, la algoritmia define estructuras estáticas y complejas que permiten representar entidades de la vida real.

#### 1. Campos y Registros
La unidad lógica más pequeña y fundamental para almacenar un dato es el **campo**. Los campos pueden clasificarse en dos tipos:
*   **Campo Contenido:** Es un dato indivisible que no necesita o no puede ser descompuesto en partes más pequeñas (por ejemplo, el número de DNI).
*   **Campo Continente:** Es aquel que agrupa lógicamente a varios campos contenidos (por ejemplo, un campo "Fecha" que contiene internamente los campos "Día", "Mes" y "Año").

La agrupación de un número fijo de estos campos conforma un **Registro**. Un registro es una estructura de datos estática que contiene información referida a una misma entidad y debe ser tratada lógicamente como una unidad. Para acceder individualmente a cada dato dentro de un registro se utiliza un "selector de campo" (habitualmente representado por un punto). Adicionalmente, para poder distinguir un registro de otro de forma inequívoca, se define un **Campo Clave**, el cual no puede repetirse entre distintos registros.

#### 2. Archivos: Soportes y Calidad de la Información
Dado que la memoria principal es volátil, la información de los registros suele almacenarse permanentemente en **Archivos** o ficheros. Los medios físicos donde se guardan determinan cómo podemos acceder a ellos:
*   **Soportes Secuenciales:** Los registros se escriben físicamente uno a continuación del otro. Para poder acceder al registro *N*, es estrictamente necesario pasar y leer los *N-1* registros anteriores.
*   **Soportes Direccionables:** Permiten localizar la información directamente por su dirección física mediante el uso del campo clave, sin necesidad de recorrer los registros precedentes.

Al procesar archivos, es vital asegurar la calidad de la información mediante dos principios fundamentales:
*   **Consistencia:** Verifica que los datos cumplan estrictamente con las definiciones del campo (por ejemplo, que un DNI no contenga letras y no supere los 8 dígitos).
*   **Congruencia:** Evalúa la relación lógica correcta entre dos o más datos (por ejemplo, es incongruente que exista un registro de alumno con un Número de Legajo, pero sin Nombre ni DNI). Que un dato sea consistente no garantiza que sea congruente.

#### 3. Organización de Archivos
La organización es la forma permanente en la que los datos son almacenados en el fichero y determina qué tipos de acceso se pueden utilizar:
*   **Secuencial:** Mantiene una estricta continuidad física, almacenando los registros consecutivamente.
*   **Relativa (o Directa):** Permite el acceso puntual estructurando los datos en soportes direccionables.
*   **Indexada:** Mantiene un área de datos y un área de índices separada. El área de índices siempre está ordenada por la clave y funciona como un "mapa", lo que otorga una velocidad superlativa para buscar registros individuales en comparación con la organización secuencial.

#### 4. Procesos con Ficheros
El tratamiento algorítmico de archivos se divide en dos grandes familias:

**Procesos Individuales:** Interviene un único fichero de entrada que controla el final del proceso.
*   **Generación / Emisión:** Lectura de datos para crear nuevos archivos o listados impresos.
*   **Estadísticos:** Recorren el archivo exclusivamente para contabilizar o acumular elementos, mostrando un cuadro o matriz de resultados recién al final del proceso.
*   **Corte de Control:** Genera un padrón que incluye **totales parciales** o subtotales. Exige obligatoriamente que el archivo de entrada esté ordenado por una "clave compleja". Cuando el valor de esta clave cambia entre un registro y el siguiente, se produce un "corte", momento en el cual el algoritmo detiene la lectura normal para emitir los subtotales acumulados hasta ese punto.

**Procesos Múltiples:** Intervienen como mínimo dos archivos de entrada que deben compartir una "clave de apareo" y estar ordenados por ella.
*   **Mezcla:** Combina dos o más archivos de entrada para generar un único archivo de salida unificado. Pueden utilizarse lógicas de apareo *incluyentes* (procesa todos los registros) o *excluyentes* (procesa solo los registros comunes).
*   **Actualización:** Su objetivo es incorporar (Altas), modificar o eliminar (Bajas) información de un archivo "Maestro" utilizando los datos de un archivo de "Movimientos". En una **actualización secuencial**, el proceso es lento y diferido (por lotes). En cambio, en una **actualización indexada**, la modificación se realiza típicamente de forma interactiva "in-situ" mediante una terminal, ofreciendo gran velocidad al acceder directamente al registro afectado.
