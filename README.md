# 📚 Proyecto: Implementación de Business Intelligence en Ferretería Kong S.A.C. 🏛✨

Bienvenido a la documentación oficial del proyecto **Business Intelligence** aplicado a **Ferretería Kong S.A.C.** Este proyecto busca mejorar la toma de decisiones en el área de ventas mediante herramientas de inteligencia de negocios y análisis de datos. A continuación, te presentamos un resumen detallado y creativo de los elementos clave del proyecto.

---

## 📊 Propósito del Proyecto

El principal objetivo es implementar una solución de inteligencia de negocios enfocada en optimizar la gestión de ventas de la ferretería. Con esta iniciativa, se espera:

- Mejorar la **eficiencia operativa** y reducir tiempos de respuesta.
- Identificar **productos estrella** y patrones de consumo.
- Proporcionar herramientas avanzadas de análisis para decisiones estratégicas basadas en datos.

**Ubicación de la Empresa:**
- **Dirección:** Av. Tahuantinsuyo 1119, La Esperanza, Trujillo, La Libertad.
- **Tipo:** Ferretería general minorista.

---

## 🎮 Metodología Utilizada

Se empleó la **metodología Ralph Kimball** con un enfoque incremental y evolutivo, basado en el modelo estrella (**Star Schema**) para la construcción del **DataMart**.

### 🔄 Etapas Principales:

1. **Planificación:**
   - Análisis de requerimientos.
   - Diseño conceptual y lógico.

2. **Desarrollo:**
   - Implementación de la base de datos transaccional.
   - Creación de tablas y carga inicial de datos.

3. **Pruebas:**
   - Pruebas de integridad de datos y rendimiento.

4. **Implementación:**
   - Migración de datos al DataMart.
   - Capacitación del personal.

---

## 🛠️ Arquitectura del Proyecto

### 📖 Base de Datos Transaccional
La base de datos transaccional gestiona:
- **Ventas y compras:** Detalles de transacciones.
- **Inventarios:** Control de productos.
- **Clientes y proveedores:** Información relevante para la toma de decisiones.

![Diagrama de Base de Datos](https://via.placeholder.com/800x400?text=Diagrama+Base+de+Datos+Ferreter%C3%ADa+Kong)

### 📊 DataMart
El DataMart adopta un modelo estrella con:
- **Tabla de Hechos:** `Hecho_Ventas` para datos detallados de ventas.
- **Dimensiones:** `Clientes`, `Productos`, `Empleados`, `Tiempo`, `TipoComprobante`.

![Modelo Estrella](https://via.placeholder.com/800x400?text=Modelo+Estrella+DataMart)

---

## 🔍 Proceso ETL

### 🔋 Extracción
Los datos se toman de la base de datos transaccional con herramientas como **SQL Server Integration Services (SSIS)**.

### ⚙️ Transformación
Limpieza y estructuración de los datos:
- Eliminación de duplicados.
- Normalización de formatos.

### ⏬ Carga
Los datos transformados se cargan en el DataMart para análisis.

![Captura de pantalla 2025-01-15 130628](https://github.com/user-attachments/assets/4985622e-8a9d-405c-b2a5-50bcb5dabad6)
![Captura de pantalla 2025-01-15 130653](https://github.com/user-attachments/assets/ab816789-985c-4e54-bd5b-b5d2432dc9b2)

---

## 🔢 Implementación OLAP

### Creación de Cubos
Se utilizó **Visual Studio 2022** para implementar un cubo OLAP con las siguientes características:
- Medidas: Cantidad vendida, impuestos, montos totales.
- Dimensiones: Productos, clientes, tiempo, empleados.

![Diagrama OLAP](https://via.placeholder.com/800x400?text=Cubo+OLAP)

---

## 📊 Visualización en Power BI

### 🎨 Dashboards Creados:

1. **Análisis de Ventas por Periodo**:
   - Tendencias mensuales y anuales.

2. **Rendimiento por Empleado**:
   - Comparaciones de ventas.

3. **Productos Estrella**:
   - Identificación de los más vendidos.

![image](https://github.com/user-attachments/assets/a63558ac-f815-4c70-8ec0-2abaae17f1f5)

---

## 📚 Resultados Clave

- **1,032,628 registros** integrados exitosamente.
- **Automatización del proceso de análisis** con ETL.
- **Dashboards interactivos** para decisiones informadas.

---

## 🚀 Innovación y Futuro

La implementación de esta solución BI en Ferretería Kong S.A.C. marca un antes y un después en la toma de decisiones. Con una base sólida en tecnologías como SQL Server y Power BI, la empresa está preparada para escalar y adaptarse a los retos del mercado moderno.

---

🌟 **¡Gracias por ser parte de esta transformación digital!**
