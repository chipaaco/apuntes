---
layout: default
title: Modularización Subacciones
parent: Teoría
nav_order: 5
---

# Modularización: Subacciones

La resolución de problemas algorítmicos complejos se facilita considerablemente cuando se dividen en problemas más pequeños, aplicando el conocido principio de "divide y vencerás". La resolución individual de estos subproblemas se realiza mediante el diseño de **subacciones o subalgoritmos**. 

Un subalgoritmo es un algoritmo en sí mismo que es ejecutado temporalmente por la solicitud del algoritmo principal (o de otra subacción). A este proceso se lo conoce como **control de ejecución**: cuando el programa principal realiza la llamada, se detiene y cede el control a la subacción; una vez que esta termina su tarea, le devuelve el control al programa principal para que continúe con la sentencia inmediatamente posterior.

Para implementar esta modularización, existen dos grandes tipos de subacciones:

#### Funciones vs. Procedimientos
La elección entre usar una función o un procedimiento depende estrictamente del objetivo de la tarea:
*   **Funciones:** Una función es una subacción que procesa datos de entrada y **devuelve obligatoriamente un único resultado**. El resultado calculado se devuelve almacenado en el propio nombre de la función. Se utilizan cuando el objetivo principal es realizar un cálculo específico que el programa principal necesita evaluar o asignar (por ejemplo, calcular un factorial, determinar si un número es par, o encontrar el mayor de tres números).
*   **Procedimientos:** Un procedimiento también es una subacción diseñada con un fin específico, pero a diferencia de las funciones, **no devuelve ningún valor**, sino que simplemente ejecuta una serie de acciones. Se utilizan para agrupar bloques de instrucciones que realizan tareas operativas o rutinas, como mostrar un menú, imprimir un listado de errores o validar un inicio de sesión.

#### Ámbito de las variables: Locales vs. Globales
Al trabajar con módulos, es vital comprender dónde "viven" y hasta dónde son accesibles las variables que declaramos:
*   **Variables Locales:** Son aquellas que se declaran exclusivamente dentro de un subprograma. Se dice que son locales a ese módulo porque su valor y el espacio en memoria que ocupan **se pierden y liberan una vez que finaliza la ejecución de la subacción**.
*   **Variables Globales:** Son las que se declaran en el ambiente del programa principal. Estas pueden ser utilizadas tanto por el programa principal como por todos los subprogramas definidos dentro de él.
*   *Nota:* Si existe una variable global y una local que comparten exactamente el mismo nombre, dentro de la subacción **tendrá prioridad la variable local**.

#### Comunicación: Paso de Parámetros
Para que el algoritmo principal y las subacciones puedan intercambiar información en ambos sentidos, se utilizan los **parámetros** (variables y/o constantes de comunicación). 

Al invocar una subacción, se establece una correspondencia automática entre los parámetros del programa principal (llamados *argumentos o parámetros actuales/reales*) y los que recibe la subacción (llamados *parámetros formales o ficticios*). Esta correspondencia exige que la cantidad y el orden de los tipos de datos sean exactamente iguales en la llamada y en la recepción.

Existen dos métodos fundamentales para realizar este paso de parámetros:

1.  **Paso por Valor:** La información del parámetro real se copia y se almacena en una **dirección de memoria diferente** al ser recibida por la subacción. Al tratarse de una copia, cualquier modificación que sufra esta variable dentro del subprograma **no afectará a la variable original** del programa principal. Es el método más seguro y el más utilizado por defecto.
2.  **Paso por Referencia:** La variable recibida como parámetro formal en la subacción **apunta exactamente a la misma dirección de memoria** que la variable original. Por lo tanto, si dentro de la función o procedimiento se altera su valor, **se modificará directamente la variable original** del programa principal. Se utiliza cuando el programa principal necesita estrictamente que la subacción modifique sus datos.
