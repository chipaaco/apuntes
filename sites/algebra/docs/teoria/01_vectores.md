---
layout: default
title: 1. Vectores
parent: Teoría
nav_order: 1
---

# 1. Vectores

## 1.1 Vector geométrico

Un **vector geométrico** es un segmento de recta orientado, representado visualmente como una flecha.

Sus tres elementos definitorios son:

* [Módulo](#módulo)
* [Dirección](#dirección)
* [Sentido](#sentido)

El concepto de **vectores equivalentes** o equipolentes establece que dos o más vectores son iguales si comparten el mismo módulo, dirección y sentido, sin importar su ubicación en el espacio. Esto permite desplazar los vectores libremente siempre que no se modifique su forma u orientación.

<div align="center" style="margin: 30px 0;">
  <div id="ggb-vectores" style="width: 600px; height: 400px; background-color: #f9f9f9;"></div>
</div>
<script src="https://www.geogebra.org/apps/deployggb.js"></script>
<script>
var ggbAppVectores = new GGBApplet({
  "material_id": "mfmewjvk",
  "width": 600,
  "height": 400,
  "showToolBar": false,
  "showAlgebraInput": false,
  "showMenuBar": false,
  "showToolBarHelp": false,
  "showResetIcon": true,
  "enableLabelDrags": false,
  "enableShiftDragZoom": true,
  "enableRightClick": false,
  "showFullscreenButton": false,
  "allowStyleBar": false,
  "appName": "classic",
  "perspective": "G"
}, true);
window.addEventListener("load", function() {
  ggbAppVectores.inject('ggb-vectores');
});
</script>


## 1.2 Vectores algebraicos en el plano

Un **vector algebraico** en el plano ($\mathbb{R}^2$) es la traducción de un vector geométrico a un lenguaje numérico. Para facilitar el trabajo con ellos, desplazamos el vector de forma paralela hasta que su inicio coincida con el origen $(0,0)$.

En esta posición, el vector queda definido únicamente por la ubicación de su punta, que llamamos **componentes**.

Si un vector conecta un punto inicial $A(x_1, y_1)$ con un punto final $B(x_2, y_2)$, sus componentes se obtienen restando las coordenadas del final menos las del inicial:
$\vec{v} = (x_2 - x_1, y_2 - y_1)$

El módulo o longitud del vector se calcula utilizando el Teorema de Pitágoras, tratando al vector como la hipotenusa de un triángulo rectángulo formado por sus componentes:
$|\vec{v}| = \sqrt{(x_2 - x_1)^2 + (y_2 - y_1)^2}$

Este tema permite abandonar la representación visual manual para trabajar con valores exactos. Es el fundamento necesario para operar vectores mediante sumas y productos numéricos, y sirve como base para extender el estudio hacia el espacio tridimensional ($\mathbb{R}^3$).

<div align="center" style="margin: 30px 0;">
  <div id="ggb-vectores-algebraicos" style="width: 600px; height: 400px; background-color: #f9f9f9;"></div>
</div>
<script src="https://www.geogebra.org/apps/deployggb.js"></script>
<script>
var ggbAppVectoresAlgebraicos = new GGBApplet({
  "material_id": "xukuxgza",
  "width": 600,
  "height": 400,
  "showToolBar": false,
  "showAlgebraInput": false,
  "showMenuBar": false,
  "showToolBarHelp": false,
  "showResetIcon": true,
  "enableLabelDrags": false,
  "enableShiftDragZoom": true,
  "enableRightClick": false,
  "showFullscreenButton": false,
  "allowStyleBar": false,
  "appName": "classic",
  "perspective": "G"
}, true);
window.addEventListener("load", function() {
  ggbAppVectoresAlgebraicos.inject('ggb-vectores-algebraicos');
});
</script>

## 1.3 Vectores unitarios estándar o canónicos en el plano
Definición de los vectores $\mathbf{i}$ y $\mathbf{j}$.

## 1.4 Vectores algebraicos en el espacio
Representación de vectores en $\mathbb{R}^3$ mediante componentes $(x, y, z)$.

## Conceptos

### Módulo
La longitud del segmento.

### Dirección
La recta sobre la que se apoya.

### Sentido
La orientación indicada por la punta de la flecha.
