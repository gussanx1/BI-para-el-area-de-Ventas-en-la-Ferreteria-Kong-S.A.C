# 📚 Proyecto: Implementación de Business Intelligence en Ferretería Kong S.A.C. 🏛✨

Bienvenido a la documentación oficial del proyecto **Business Intelligence** aplicado a **Ferretería Kong S.A.C.** Este proyecto busca mejorar la toma de decisiones en el área de ventas mediante herramientas de inteligencia de negocios y análisis de datos. A continuación, te presentamos un resumen detallado y creativo de los elementos clave del proyecto.

-----
![Captura de pantalla 2025-01-15 132141](https://github.com/user-attachments/assets/069cdf2f-8525-48d2-8580-915ebeb26fb2)

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

![Captura de pantalla 2025-01-15 130522](https://github.com/user-attachments/assets/a3a96185-ce6d-4675-81bc-bc7898c1a647)

--------------

![Captura de pantalla 2025-01-15 130536](https://github.com/user-attachments/assets/57fc15f2-15cf-4fc4-9bac-d52e966a67cd)


-------


### 📊 DataMart
El DataMart adopta un modelo estrella con:
- **Tabla de Hechos:** `Hecho_Ventas` para datos detallados de ventas.
- **Dimensiones:** `Clientes`, `Productos`, `Empleados`, `Tiempo`, `TipoComprobante`.

![Captura de pantalla 2025-01-15 130610](https://github.com/user-attachments/assets/b164f5bf-fc34-41e2-ba62-0ef686b06dd0)

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

---------
![Captura de pantalla 2025-01-15 130653](https://github.com/user-attachments/assets/ab816789-985c-4e54-bd5b-b5d2432dc9b2)

---

## 🔢 Implementación OLAP

### Creación de Cubos
Se utilizó **Visual Studio 2022** para implementar un cubo OLAP con las siguientes características:
- Medidas: Cantidad vendida, impuestos, montos totales.
- Dimensiones: Productos, clientes, tiempo, empleados.

![Captura de pantalla 2025-01-15 131522](https://github.com/user-attachments/assets/67f892a3-d171-4e42-ac1f-e749fc670e41)

-------
![Captura de pantalla 2025-01-15 131534](https://github.com/user-attachments/assets/b340ece7-2efc-48cb-a5f9-58b1b90548a7)

-------
![Captura de pantalla 2025-01-15 131551](https://github.com/user-attachments/assets/383f56d5-f7e5-4807-8fbb-21968524e10d)

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

-----------
![Captura de pantalla 2025-01-15 131812](https://github.com/user-attachments/assets/1fe8b84e-ac0e-4abc-93c5-e5c6b0a2af86)

-----------

![Captura de pantalla 2025-01-15 131837](https://github.com/user-attachments/assets/a1fe2f85-0b22-4e6e-9028-9b95db1feccd)

-----------

![Captura de pantalla 2025-01-15 131852](https://github.com/user-attachments/assets/91c8c5d9-2723-47a2-b990-83c2a3fe0274)




## 🌐 Implementación en Azure

**🔧 Herramientas y Servicios Utilizados** 

** Azure Synapse Analytics:** 

   - Creación de áreas de trabajo para análisis avanzado.

   - Configuración de grupos de SQL dedicados para el procesamiento de datos.

** Azure Data Factory:**

   - Implementación de flujos de datos para la transferencia entre orígenes y destinos.

** Almacenamiento en Azure:**

   - Carga y gestión de archivos en contenedores Blob.

**🔍 Proceso de Configuración**

1. **Creación de una cuenta en Azure:**

   - Registro en Azure con una suscripción gratuita.

2. **Configuración del entorno de trabajo:**

   - Creación de grupos de recursos y cuentas de almacenamiento.

3. **Despliegue de DataMart en Synapse Analytics:**

   - Uso de herramientas SQL para importar y gestionar la base de datos FerreteriaMart.

4. **Integración con Power BI:**

   - Uso de la URL del servidor Synapse para conectar y visualizar datos en Power BI.



## 📚 Resultados Clave

- 1,032,628 registros integrados exitosamente.

- Automatización del proceso de análisis con ETL.

- Dashboards interactivos para decisiones informadas.

## 🚀 Innovación y Futuro

La implementación de esta solución BI en Ferretería Kong S.A.C. marca un antes y un después en la toma de decisiones. Con una base sólida en tecnologías como SQL Server, Azure y Power BI, la empresa está preparada para escalar y adaptarse a los retos del mercado moderno.

🌟 ¡Gracias por ser parte de esta transformación digital!
