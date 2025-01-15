# Base de Datos: Zapatería 🥿🛠️

Este documento describe las tablas y las relaciones de una base de datos para gestionar información relacionada con una zapatería. También se incluye un conjunto de consultas SQL que interactúan con estas tablas para obtener y manipular datos relevantes.

## Tablas Principales 📋

### 1. **Empleado.Armador** 👷
- **Descripción**: Contiene información sobre los armadores.
- **Campos principales**:
  - `ArmadorId`: Identificador único del armador.
  - `ArmadorNombre`: Nombre del armador.
  - `ArmadorApaterno` y `ArmadorAmaterno`: Apellidos.
  - `ArmadorEstado`: Estado actual del armador.
  - `ArmadorDNI`: Documento Nacional de Identidad.
  - `ArmadorTelefono`: Teléfono de contacto.
  - `ArmadorDireccion`: Dirección.
  - `ArmadorNpares`: Número de pares que fabrica.
  - `ArmadorPagoXpar`: Pago recibido por cada par fabricado.
  - `ArmadorRegistro`: Fecha de registro.

### 2. **Empleado.Perfilador** 🧑‍🏭
- **Descripción**: Almacena información sobre los perfiladores asociados a los armadores.
- **Campos principales**:
  - `PerfiladorId`: Identificador del perfilador.

### 3. **Empleado.Alistador** 👨‍🔧
- **Descripción**: Registra los detalles de los alistadores que trabajan en la zapatería.
- **Campos principales**:
  - `AlistadorId`: Identificador único del alistador.
  - `AlistadorNombre`: Nombre.
  - `AlistadorApaterno` y `AlistadorAmaterno`: Apellidos.
  - `AlistadorEstado`: Estado actual del alistador.
  - `AlistadorDNI`: Documento de identidad.
  - `AlistadorTelefono`: Teléfono de contacto.
  - `AlistadorDireccion`: Dirección.
  - `AlistadorNpares`: Número de pares procesados.
  - `AlistadorPago`: Pago recibido por su trabajo.
  - `AlistadorRegistro`: Fecha de registro.

### 4. **Proceso.Materiales** 🧵📦
- **Descripción**: Contiene información sobre los materiales utilizados en el proceso de fabricación.
- **Campos principales**:
  - `MaterialesId`: Identificador del material.
  - `MaterialesNombre`: Nombre del material.
  - `MaterialesDescripcion`: Descripción.
  - `MaterialesEstado`: Estado actual.
  - `MaterialesCosto`: Costo del material.

### 5. **Proceso.Proveedor** 🚚
- **Descripción**: Registra información sobre los proveedores de materiales.
- **Campos principales**:
  - `ProveedorId`: Identificador del proveedor.

### 6. **Proceso.Compra** 🛒
- **Descripción**: Almacena los detalles de las compras realizadas.
- **Campos principales**:
  - `CompraId`: Identificador de la compra.
  - `CompraDescripcion`: Descripción de la compra.
  - `CompraFechaCompra`: Fecha en que se realizó la compra.
  - `CompraFechaEntrega`: Fecha programada de entrega.
  - `CompraEstado`: Estado actual de la compra.

### 7. **Proceso.Kriocas** 🧩
- **Descripción**: Tabla adicional utilizada para enlazar compras con procesos específicos.
- **Campos principales**:
  - `KriocasId`: Identificador de la entidad.

## Relaciones Entre Tablas 🔗
- **Empleado.Armador** y **Empleado.Perfilador**: Relación uno a uno mediante `ArmadorPerfiladorId`.
- **Empleado.Alistador** y **Empleado.Armador**: Relación uno a uno mediante `AlistadorArmadorId`.
- **Proceso.Materiales** y **Proceso.Proveedor**: Relación uno a uno mediante `MaterialesProveedorId`.
- **Proceso.Compra** con:
  - **Proceso.Materiales** mediante `CompraMaterialesId`.
  - **Proceso.Kriocas** mediante `CompraKriocasId`.
  - **Proceso.Proveedor** mediante `CompraProveedorId`.

## Consultas SQL 🖥️

### Consultas con Join 🔄
- Se utilizan para relacionar tablas y obtener información combinada.
  - Ejemplo: Obtener información de armadores junto con sus perfiladores asociados.

### Consultas con Subconsultas 🔍
- Realizan operaciones adicionales dentro de las consultas principales.
  - Ejemplo: Contar la cantidad de armadores vinculados a un perfilador.

### Optimizaciones Posibles ⚡
- **Reemplazar subconsultas por joins**: Mejora el rendimiento al evitar consultas redundantes.
- **Agregar filtros**: Usar cláusulas `WHERE` para limitar los resultados según criterios específicos.
- **Uso de alias consistentes**: Facilita la lectura y mantenimiento del código SQL.

Este README ofrece una visión general de la estructura de la base de datos y los códigos SQL asociados. Para detalles específicos de implementación, consulta los scripts SQL incluidos en el proyecto. ✨
