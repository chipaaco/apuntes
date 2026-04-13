---
layout: default
title: Gestión de Procesos
nav_order: 1
parent: Inicio
---

# Gestión de Procesos

Un **proceso** es un programa en ejecución. El sistema operativo se encarga de:

1. **Crear** procesos
2. **Planificar** su ejecución (scheduling)
3. **Sincronizar** su comunicación
4. **Terminar** procesos

## Estados de un proceso

| Estado | Descripción |
|--------|-------------|
| Nuevo | El proceso está siendo creado |
| Listo | Esperando para ser asignado a un procesador |
| En ejecución | Las instrucciones se están ejecutando |
| Esperando | El proceso espera un evento (I/O, señal) |
| Terminado | El proceso finalizó su ejecución |
